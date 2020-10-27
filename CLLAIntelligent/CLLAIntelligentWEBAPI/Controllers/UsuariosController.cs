using CLLAIntelligentAccesoDatos;
using CLLAIntelligentLibreria.Criptografia;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Web.Http;

namespace CLLAIntelligentWEBAPI.Controllers
{
    [RoutePrefix("Usuarios")]
    [Authorize(Roles = "Administrador")]
    public class UsuariosController : ApiController
    {
        private CLLAIntelligentAccesoDatos.CLLAIntelligentContext db = new CLLAIntelligentAccesoDatos.CLLAIntelligentContext();

        private bool UsuarioExiste(string nombreUsuario)
        {
            var usuario = db.Usuario.Where(w => w.NombreUsuario == nombreUsuario).SingleOrDefault();

            return (usuario != null);
        }

        private bool CorreoElectronicoExiste(string correoElectronico)
        {
            var usuario = db.Usuario.Where(w => w.Email == correoElectronico).SingleOrDefault();

            return (usuario != null);
        }


        private void CargarRelaciones(List<CLLAIntelligentModeloDatos.ModelosVistas.Seguridad.Usuario> usuarios)
        {
            //foreach (var usuario in usuarios)
            //{
            //    usuario.roles = db.UsuarioRol.Where(w => w.IdUsuario == usuario.IdUsuario).Select(s =>
            //        s.IdRol
            //    ).ToList();
            //    usuario.clientes = db.UsuarioCliente.Where(w => w.IdUsuario == usuario.IdUsuario).Select(s =>
            //        s.IdCliente
            //    ).ToList();
            //    usuario.sucursales = db.UsuarioSucursal.Where(w => w.IdUsuario == usuario.IdUsuario).Select(s =>
            //        s.IdSucursal
            //    ).ToList();
            //}
        }

        [HttpPost]
        [Route("InicioSesion")]
        [AllowAnonymous]
        public IHttpActionResult InicioSesion(CLLAIntelligentModeloDatos.ModelosVistas.Seguridad.UsuarioInicioSesion modelo)
        {
            try
            {
                if (modelo == null || !ModelState.IsValid)
                {
                    throw new Exception(App_Start.Libreria.ModelBinding.ModelStateErrorsToString(ModelState));
                }                

                var usuario = db.Usuario.Where(w => w.NombreUsuario == modelo.usuario).SingleOrDefault();

                if (usuario == null)
                {
                    throw new Exception("Usuario no existe");
                }

                if (usuario.Habilitado != true)
                {
                    throw new Exception("Usuario inactivo");
                }

                string contraseniaDesencriptada = StringCipher.Decrypt(usuario.ContraseniaHash, Keys.EncrypPassword);

                if (contraseniaDesencriptada != modelo.contrasenia)
                {
                    throw new Exception("Contraseña no válida");
                }

                List<Claim> claims = new List<Claim>();
                claims.Add(new Claim(ClaimTypes.Name, usuario.NombreUsuario));
                claims.Add(new Claim(ClaimTypes.GivenName, usuario.NombreCompleto));
                claims.Add(new Claim(ClaimTypes.Email, usuario.Email));
                claims.Add(new Claim(ClaimTypes.NameIdentifier, usuario.IdUsuario.ToString()));

                var rolesUsuario = db.UsuarioRol.Where(w => w.IdUsuario == usuario.IdUsuario).ToList();

                foreach (var usuarioRol in rolesUsuario)
                {
                    claims.Add(new Claim(ClaimTypes.Role, usuarioRol.Rol.Nombre));
                }

                if (claims.Count == 0)
                {
                    throw new Exception("La lista de claims esta vacia");
                }

                string token = App_Start.TokenGenerator.GenerateTokenJwt(claims);

                return Ok(token);
            }
            catch (Exception ex)
            {
                return BadRequest(CLLAIntelligentLibreria.Excepciones.ObtenerMensajesExcepcionEnCadenaSencilla(ex));
            }
        }

        [HttpGet]
        [Route("{criterioBusqueda}")]
        public IHttpActionResult Get(string criterioBusqueda)
        {
            try
            {
                try
                {
                    int idUsuario = Convert.ToInt32(criterioBusqueda);

                    var usuarios = db.fnUsuarios(idUsuario, null).ToList();
                    CargarRelaciones(usuarios);

                    return Ok(usuarios);
                }
                catch(FormatException)
                {
                    var usuarios = db.fnUsuarios(null, criterioBusqueda).ToList();
                    CargarRelaciones(usuarios);

                    return Ok(usuarios);
                }
                


                //var fleteras = dbFirst.fnFleteras(null, null).Select(s => new FleteraAgregada
                //{
                //    idFletera = s.IdFletera,
                //    nombre = s.Nombre,
                //    observaciones = s.Observaciones
                //}).ToList();

                //return Ok(fleteras);
            }
            catch (Exception ex)
            {
                return BadRequest(CLLAIntelligentLibreria.Excepciones.ObtenerMensajesExcepcionEnCadenaSencilla(ex));
            }
        }
    }
}
