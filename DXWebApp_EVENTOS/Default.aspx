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
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@6.0.3/main.min.css" rel="stylesheet"></link>
    <script src='fullcalendar/dist/index.global.js'></script>
     <script>

      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
            initialView: 'dayGridMonth',
            locale: 'es',
            headerToolbar: {
              left: 'prev,next today',
              center: 'title',
              right: 'dayGridMonth,timeGridWeek,timeGridDay'
            }
        });
        calendar.render();
      });

    </script>
  

    <div id='calendar'></div>

    <%--<dx:ASPxCalendar ID="ASPxCalendar1" runat="server" Theme="BlackGlass" Height="279px" Width="369px" OnSelectionChanged="ASPxCalendar1_SelectionChanged"> 
        <ClientSideEvents SelectionChanged="function(s, e) 
                                    {
                                        e.processOnServer = false;

                                        if (e.item.name == 'dxPopUpEventoNuevo')  { dxPopUpEventoNuevo.Show(); }                                       
                                        else { e.processOnServer = true; }                
                                    }"/>
    </dx:ASPxCalendar>--%>
    <%--<section class="content" style="background-color:white">
        <div class="row">
            <div class="col-xs-12">
                <div id="calendar" style="width: 1200px; margin-left: 105px;">
                </div>
            </div>

        </div>
    </section>

    <script type="text/javascript">
        $(document).ready(function () {
            $(document).ready(function () {
                InitializeCalendar();
            });
            function InitializeCalendar() {
                debugger;
                $.ajax({
                    type: "POST",
                    contentType: "application/json",
                    url: "Default.aspx/GetCalendarData",
                    dataType: "json",
                    success: function (data) {
                        debugger;

                        $('#calendar').empty();
                        $('#calendar').fullCalendar({
                            header: {
                                left: 'prev,next today',
                                center: 'title',
                                right: 'month,agendaWeek,agendaDay'
                            },
                            //weekNumbers: true,
                            height: 600,
                            width: 100,
                            allDayText: 'Events',
                            selectable: true,
                            overflow: 'auto',
                            editable: true,
                            firstDay: 1,
                            slotEventOverlap: true,
                            events: $.map(data.d, function (item, i) {
                               
                                //-- here is the event details to show in calendar view.. the data is retrieved via ajax call will be accessed here
                                var eventStartDate = new Date(parseInt(item.slotStartTime.substr(6)));
                                var eventEndDate = new Date(parseInt(item.slotEndTime.substr(6)));

                                var event = new Object();
                                event.id = item.slotID;
                                //event.start = new Date(eventStartDate.getFullYear(), eventStartDate.getMonth(), eventStartDate.getDate(), eventStartDate.getHours(), 0, 0, 0);
                                //event.end = new Date(eventEndDate.getFullYear(), eventEndDate.getMonth(), eventEndDate.getDate(), eventEndDate.getHours() + 1, 0, 0, 0);
                                event.start = eventStartDate;
                              //  event.end = eventEndDate;

                                event.title = formatAMPM(eventStartDate) + "-" + formatAMPM(eventEndDate);
                                //event.allDay = item.AllDayEvent;
                                event.backgroundColor = item.color;
                                event.allDay= true;
                                return event;
                            })
                        });
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        //-- log error
                    }
                });
            }
        })
        function formatAMPM(date) {
            var hours = date.getHours();
            var minutes = date.getMinutes();
            var ampm = hours >= 12 ? 'pm' : 'am';
            hours = hours % 12;
            hours = hours ? hours : 12; // the hour '0' should be '12'
            minutes = minutes < 10 ? '0' + minutes : minutes;
            var strTime = hours + ':' + minutes + ' ' + ampm;
            return strTime;
        }
    </script>--%>
    <%--<dxwschs:ASPxScheduler ID="ASPxScheduler1" runat="server">
        <Views>
            <WeekView Enabled="false"></WeekView>
            <FullWeekView Enabled="true">
            </FullWeekView>
        </Views>

    </dxwschs:ASPxScheduler>--%>
</asp:Content>