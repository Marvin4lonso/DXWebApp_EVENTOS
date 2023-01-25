using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DXWebApp_EVENTOS.App_Code.Models
{
    public class ClsPersonal
    {
        private int idPersonal;
        private string nombre;
        private string apellido;
        private string correo;
        private string telefono;
        private int estado;
        private int idRol;

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

        public string Apellido
        {
            get
            {
                return apellido;
            }

            set
            {
                apellido = value;
            }
        }

        public string Correo
        {
            get
            {
                return correo;
            }

            set
            {
                correo = value;
            }
        }

        public string Telefono
        {
            get
            {
                return telefono;
            }

            set
            {
                telefono = value;
            }
        }

        public int Estado
        {
            get
            {
                return estado;
            }

            set
            {
                estado = value;
            }
        }

        public int IdRol
        {
            get
            {
                return idRol;
            }

            set
            {
                idRol = value;
            }
        }
    }
}