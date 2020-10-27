using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http.ModelBinding;

namespace CLLAIntelligentWEBAPI.App_Start
{
    public static class Libreria
    {
        public static class ModelBinding
        {
            public static string ModelStateErrorsToString(ModelStateDictionary ModelState)
            {
                string errors = "Modelo invalido\n ";

                foreach (var key in ModelState.Values)
                {
                    foreach (var error in key.Errors)
                    {
                        errors += error.ErrorMessage + "\n ";
                    }
                }

                return errors;
            }
        }
    }
}