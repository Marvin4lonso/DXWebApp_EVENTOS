using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DXWebApp_EVENTOS.App_Code.Models
{
    public class ClsVehiculo
    {
        private int idVehiculo;
        private string placa;
        private string marca;
        private string modelo;
        private int estado;

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

        public string Placa
        {
            get
            {
                return placa;
            }

            set
            {
                placa = value;
            }
        }

        public string Marca
        {
            get
            {
                return marca;
            }

            set
            {
                marca = value;
            }
        }

        public string Modelo
        {
            get
            {
                return modelo;
            }

            set
            {
                modelo = value;
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
    }
}