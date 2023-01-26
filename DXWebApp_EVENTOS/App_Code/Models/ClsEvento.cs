using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DXWebApp_EVENTOS.App_Code.Models
{
    public class ClsEvento
    {
        private int idEvento;
        private string nombre;
        private string descrip;
        private string fechaIni;
        private string fechaFin;
        private int idEstado;

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

        public string Nombre
        {
            get
            {
                return nombre;
            }

            set
            {
                nombre = value;
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

        public string FechaIni
        {
            get
            {
                return fechaIni;
            }

            set
            {
                fechaIni = value;
            }
        }

        public string FechaFin
        {
            get
            {
                return fechaFin;
            }

            set
            {
                fechaFin = value;
            }
        }

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
    }
}