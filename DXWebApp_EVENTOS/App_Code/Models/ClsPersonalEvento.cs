﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DXWebApp_EVENTOS.App_Code.Models
{
    public class ClsPersonalEvento
    {
        private int idPersonal;
        private int idEvento;

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
    }
}