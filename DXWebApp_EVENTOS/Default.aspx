<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="Default.aspx.cs" Inherits="DXWebApp_EVENTOS._Default" %>


<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <%-- DXCOMMENT: Configure ASPxGridView control --%>
<%-- 
<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="True" DataSourceID="SqlDataSource1" ClientInstanceName="ASPxGridView1"
    Width="100%">
    <SettingsAdaptivity AdaptivityMode="HideDataCells" />
    <SettingsPager PageSize="50" />
    <Paddings Padding="0px" />
    <Border BorderWidth="0px" />
    <BorderBottom BorderWidth="1px" />
    <%-- DXCOMMENT: Configure ASPxGridView's columns in accordance with datasource fields 
    <Columns>
        <dx:GridViewDataTextColumn FieldName="ContactName" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="CompanyName" VisibleIndex="1">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ContactTitle" VisibleIndex="3">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="City" VisibleIndex="5">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Phone" VisibleIndex="9">
        </dx:GridViewDataTextColumn>
    </Columns>
</dx:ASPxGridView>


<%-- DXCOMMENT: Configure your datasource for ASPxGridView 
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NWindConnectionString %>" 
        SelectCommand="SELECT * FROM [Customers]">
</asp:SqlDataSource>
--%>
  
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">

    
    <link rel="stylesheet" href="~/Content/fonts/icomoon/style.css">
  
    <link href='~/Content/fullcalendar/packages/core/main.css' rel='stylesheet' />
    <link href='~/Content/fullcalendar/packages/daygrid/main.css' rel='stylesheet' />
    
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="~/Content/css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="~/Content/css/style.css">

    <title>Calendar #10</title>
  </head>
  <body>
  

  <div id='calendar-container'>
    <div id='calendar'></div>
  </div>
    
    

    <script src="~/Content/js/jquery-3.3.1.min.js"></script>
    <script src="~/Content/js/popper.min.js"></script>
    <script src="~/Content/js/bootstrap.min.js"></script>

    <script src='~/Content/fullcalendar/packages/core/main.js'></script>
    <script src='~/Content/fullcalendar/packages/interaction/main.js'></script>
    <script src='~/Content/fullcalendar/packages/daygrid/main.js'></script>
    <script src='~/Content/fullcalendar/packages/timegrid/main.js'></script>
    <script src='~/Content/fullcalendar/packages/list/main.js'></script>

    

    <script>
      document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid', 'timeGrid', 'list' ],
      height: 'parent',
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
      },
      defaultView: 'dayGridMonth',
      defaultDate: '2020-02-12',
      navLinks: true, // can click day/week names to navigate views
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
        {
          title: 'All Day Event',
          start: '2020-02-01',
        },
        {
          title: 'Long Event',
          start: '2020-02-07',
          end: '2020-02-10'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2020-02-09T16:00:00'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2020-02-16T16:00:00'
        },
        {
          title: 'Conference',
          start: '2020-02-11',
          end: '2020-02-13'
        },
        {
          title: 'Meeting',
          start: '2020-02-12T10:30:00',
          end: '2020-02-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2020-02-12T12:00:00'
        },
        {
          title: 'Meeting',
          start: '2020-02-12T14:30:00'
        },
        {
          title: 'Happy Hour',
          start: '2020-02-12T17:30:00'
        },
        {
          title: 'Dinner',
          start: '2020-02-12T20:00:00'
        },
        {
          title: 'Birthday Party',
          start: '2020-02-13T07:00:00'
        },
        {
          title: 'Click for Google',
          url: 'http://google.com/',
          start: '2020-02-28'
        }
      ]
    });

    calendar.render();
  });

    </script>

    <script src="~/Content/js/main.js"></script>
  </body>

</asp:Content>