using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DXWebApp_EVENTOS.App_Code.Models
{
    public class ClsRol
    {
        private readonly int idRol;
        private string descrip;

        public int IdRol
        {
            get
            {
                return idRol;
            }
        }

        public string Descrip
        {
            get
            {
                return descrip;
            }

            set
            {
                descrip = value;
            }
        }
    }
}