using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DXWebApp_EVENTOS {
    public partial class _Default : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            //ASPxCalendar1.Caption = "Eventos";
            //ASPxCalendar1.FirstDayOfWeek = FirstDayOfWeek.Sunday;
            //ASPxCalendar1.DayStyle.HorizontalAlign = HorizontalAlign.Left;
            //ASPxCalendar1.DayStyle.VerticalAlign = VerticalAlign.Top;
            //ASPxCalendar1.DayOtherMonthStyle.BackColor = System.Drawing.Color.Cornsilk;
        }

        protected void ASPxCalendar1_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
}