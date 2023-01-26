using DXWebApp_EVENTOS.App_Code.Utilidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DXWebApp_EVENTOS.App_Code.Dao.Mantenimiento
{
    public class ClsDatoPersonal : ClsDataLayer
    {
        ClsConexion objSql = new ClsConexion();
        ClsErrorHandler log = new ClsErrorHandler();
        String strSql = string.Empty;

        public bool ExecuteSql(string strSql)
        {
            try
            {
                return objSql.ejecutarNonQuery(strSql);
            }
            catch (Exception ex)
            {
                log.LogError(ex.ToString(), ex.StackTrace);
                return false;
            }
        }

        public bool getPersonalAll()
        {
            try
            {
                strSql = "SELECT P.ID_PERSONAL,(P.Nombre +' '+ P.Apellido) AS NOMBRE, P.Telefono, R.Descripcion FROM PERSONAL P, ROL R WHERE P.ID_ROL = R.ID_ROL";
                DsReturn = objSql.EjecutaSQL(strSql, "Personal");
            }
            catch (Exception ex)
            {
                log.LogError(ex.ToString(), ex.StackTrace);
                //throw;
            }
            return true;
        }
    }
}