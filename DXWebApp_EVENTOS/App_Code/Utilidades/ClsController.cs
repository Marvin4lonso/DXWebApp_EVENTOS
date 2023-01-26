using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace DXWebApp_EVENTOS.App_Code.Utilidades
{
    public class ClsController
    {
        DataSet dsReturn;

        public DataSet DsReturn
        {
            get
            {
                return dsReturn;
            }

            set
            {
                dsReturn = value;
            }
        }
    }
}