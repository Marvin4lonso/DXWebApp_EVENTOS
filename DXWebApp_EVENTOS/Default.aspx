<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="Default.aspx.cs" Inherits="DXWebApp_EVENTOS._Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxScheduler.v17.2, Version=17.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxScheduler" TagPrefix="dxwschs" %>

<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v17.2, Version=17.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <%--<link href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css" rel="stylesheet" />
    <script src='http://fullcalendar.io/js/fullcalendar-2.1.1/lib/moment.min.js'></script>
    <script src='http://fullcalendar.io/js/fullcalendar-2.1.1/lib/jquery.min.js'></script>
    <script src="http://fullcalendar.io/js/fullcalendar-2.1.1/lib/jquery-ui.custom.min.js"></script>
    <script src='http://fullcalendar.io/js/fullcalendar-2.1.1/fullcalendar.min.js'></script>--%>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.0.3/index.global.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@6.0.3/main.min.css" rel="stylesheet" type="text/css">
    <script src='fullcalendar/dist/index.global.js'></script>
     <script>

      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
          var calendar = new FullCalendar.Calendar(calendarEl, {
            timeZone: 'local',
            initialView: 'dayGridMonth',
            locale: 'es',
            headerToolbar: {
              left: 'prev,next today',
              center: 'title',
              right: 'dayGridMonth, timeGridWeek, timeGridDay'
            },
            dateClick: function (info) {
                //alert('Fecha: ' + info.dateStr);
                dxPopUp.Show();
            },
            eventLimit: true // allow "more" link when too many events
        });
        calendar.render();
      });

    </script>
  

    <div id='calendar'></div>    

    <%--Popup Control para asignar personal a eventos--%>
    <dx:ASPxPopupControl ID="dxPopUp" runat="server" AllowDragging="True" ClientInstanceName="dxPopUp" CloseAction="CloseButton" EnableViewState="False" Modal="true"
        Height="0px" PopupAnimationType="Slide" PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" Width="0px" HeaderText="Agenda Evento">
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" MaxWidth="700px" />
         <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <div class="padding">

                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Mostrar Evento</h2>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblEvento" runat="server" Text="Evento:" CssClass="control-label col-ms-2"></asp:Label>
                        <asp:Label ID="lblMostrarNombre" runat="server" Text=" Mostrar Nombre" CssClass="control-label col-ms-2"></asp:Label>
                        <div class="col-sm-10">
                            <br />
                            <asp:Label ID="lblMostrarDescripcion" runat="server" Text="Mostrar Descripcion" CssClass="control-label col-ms-2"></asp:Label>
                            <br />
                            <asp:Label ID="lblMostarFechaI" runat="server" Text="Mostrar Fecha Inicial" CssClass="control-label col-ms-2"></asp:Label>
                            <br />
                            <asp:Label ID="lblMostrarFechaF" runat="server" Text="Mostrar Fecha Final" CssClass="control-label col-ms-2"></asp:Label>
                        </div>
                    </div>
                    <br />
                    <br />

                    <div class="form-group">
                        <asp:Label ID="lblCamarografo" runat="server" Text="Camarografo:" CssClass="control-label col-ms-2"></asp:Label>
                        <div class="col-sm-10">
                            <dx:ASPxComboBox ID="ASPxComboBox1" runat="server" ValueType="System.String"></dx:ASPxComboBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblReportero" runat="server" Text="Reportero:" CssClass="control-label col-ms-2"></asp:Label>
                        <div class="col-sm-10">
                            <dx:ASPxComboBox ID="ASPxComboBox2" runat="server" ValueType="System.String"></dx:ASPxComboBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblVehiculo" runat="server" Text="Vehiculo:" CssClass="control-label col-ms-2"></asp:Label>
                        <div class="col-sm-10">
                            <dx:ASPxComboBox ID="ASPxComboBox3" runat="server" ValueType="System.String"></dx:ASPxComboBox>
                        </div>
                    </div>

                    <div class="card-footer">
                        <dx:ASPxButton ID="dxBtnAgregar" 
                            runat="server" 
                            Text="Asignar Personal" 
                            AutoPostBack="false" 
                            Font-Bold="true" 
                            Font-Size="Medium" 
                            UseSubmitBehavior="false">

                        </dx:ASPxButton>
                        <dx:ASPxButton ID="dxBtnModificar" 
                            runat="server" 
                            Text="Modificar Personal" 
                            AutoPostBack="false" 
                            Font-Bold="true" 
                            Font-Size="Medium" 
                            UseSubmitBehavior="false">

                        </dx:ASPxButton>
                        <dx:ASPxButton ID="dxBtnEliminar" 
                            runat="server" 
                            Text="Eliminar Personal" 
                            AutoPostBack="false" 
                            Font-Bold="true" 
                            Font-Size="Medium" 
                            UseSubmitBehavior="false">

                        </dx:ASPxButton>
                        <dx:ASPxButton ID="dxBtnModificarEvento" 
                            runat="server" 
                            Text="Modificar Evento" 
                            AutoPostBack="false" 
                            Font-Bold="true" 
                            Font-Size="Medium" 
                            UseSubmitBehavior="false">

                        </dx:ASPxButton>
                        <dx:ASPxButton ID="dxBtnEliminarEvento" 
                            runat="server" 
                            Text="Eliminar Evento" 
                            AutoPostBack="false" 
                            Font-Bold="true" 
                            Font-Size="Medium" 
                            UseSubmitBehavior="false">

                        </dx:ASPxButton>

                    </div>

                </div>
            </dx:PopupControlContentControl>

         </ContentCollection>
    </dx:ASPxPopupControl>
    
</asp:Content>