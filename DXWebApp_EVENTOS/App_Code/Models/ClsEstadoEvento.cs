using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DXWebApp_EVENTOS.App_Code.Models
{
    public class ClsEstadoEvento
    {
        private int idEstado;
        private string descrip;

        public int IdEstado
        {
            get
            {
                return idEstado;
            }

            set
            {
                idEstado = value;
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