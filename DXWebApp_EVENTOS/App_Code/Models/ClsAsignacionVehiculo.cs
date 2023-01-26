using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DXWebApp_EVENTOS.App_Code.Models
{
    public class ClsAsignacionVehiculo
    {
        private int idAsignacion;
        private int idPersonal;
        private int idEvento;
        private int idVehiculo;
        private string fechaHora;

        public int IdAsignacion
        {
            get
            {
                return idAsignacion;
            }

            set
            {
                idAsignacion = value;
            }
        }

        public int IdPersonal
        {
            get
            {
                return idPersonal;
            }

            set
            {
                idPersonal = value;
            }
        }

        public int IdEvento
        {
            get
            {
                return idEvento;
            }

            set
            {
                idEvento = value;
            }
        }

        public int IdVehiculo
        {
            get
            {
                return idVehiculo;
            }

            set
            {
                idVehiculo = value;
            }
        }

        public string FechaHora
        {
            get
            {
                return fechaHora;
            }

            set
            {
                fechaHora = value;
            }
        }
    }
}