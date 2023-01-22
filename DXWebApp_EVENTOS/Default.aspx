<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="Default.aspx.cs" Inherits="DXWebApp_EVENTOS._Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxScheduler.v17.2, Version=17.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxScheduler" TagPrefix="dxwschs" %>

<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v17.2, Version=17.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--<dx:ASPxCalendar ID="ASPxCalendar1" runat="server" Theme="BlackGlass" Height="279px" Width="369px" OnSelectionChanged="ASPxCalendar1_SelectionChanged"> 
        <ClientSideEvents SelectionChanged="function(s, e) 
                                    {
                                        e.processOnServer = false;

                                        if (e.item.name == 'dxPopUpEventoNuevo')  { dxPopUpEventoNuevo.Show(); }                                       
                                        else { e.processOnServer = true; }                
                                    }"/>
    </dx:ASPxCalendar>--%>

    <dxwschs:ASPxScheduler ID="ASPxScheduler1" runat="server">
        <Views>
            <WeekView Enabled="false"></WeekView>
            <FullWeekView Enabled="true">
            </FullWeekView>
        </Views>

    </dxwschs:ASPxScheduler>
</asp:Content>