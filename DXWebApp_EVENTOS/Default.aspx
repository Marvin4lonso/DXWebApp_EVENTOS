<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="Default.aspx.cs" Inherits="DXWebApp_EVENTOS._Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxScheduler.v17.2, Version=17.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxScheduler" TagPrefix="dxwschs" %>

<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v17.2, Version=17.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.XtraScheduler.v17.2.Core, Version=17.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraScheduler" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--<dx:ASPxCalendar ID="ASPxCalendar1" runat="server" Theme="BlackGlass" Height="279px" Width="369px" OnSelectionChanged="ASPxCalendar1_SelectionChanged"> 
        <ClientSideEvents SelectionChanged="function(s, e) 
                                    {
                                        e.processOnServer = false;

                                        if (e.item.name == 'dxPopUpEventoNuevo')  { dxPopUpEventoNuevo.Show(); }                                       
                                        else { e.processOnServer = true; }                
                                    }"/>
    </dx:ASPxCalendar>--%>

    <table style="width: 100%">
        <tr>
            <td>

                <dxwschs:ASPxScheduler ID="ASPxScheduler1" runat="server" AppointmentDataSourceID="SqlDataSource1" ClientIDMode="AutoID" Start="2023-01-26">
                    <Storage>
                        <Appointments AutoRetrieveId="True">
                            <Mappings AllDay="AllDay" AppointmentId="UniqueID" Description="Description" End="EndDate" Label="Label" Location="Location" RecurrenceInfo="RecurrenceInfo" ReminderInfo="ReminderInfo" ResourceId="ResourceID" Start="StartDate" Status="Status" Subject="Subject" Type="Type" />
                        </Appointments>
                    </Storage>
                    <Views>
                        <DayView ViewSelectorItemAdaptivePriority="2" ShowWorkTimeOnly="true">
                            <WorkTime Start="6:00" End="17:30" />
                            <TimeRulers>
                                <cc1:TimeRuler></cc1:TimeRuler>
                            </TimeRulers>

                            <AppointmentDisplayOptions ColumnPadding-Left="2" ColumnPadding-Right="4"></AppointmentDisplayOptions>
                        </DayView>

                        <WorkWeekView ViewSelectorItemAdaptivePriority="6">
                            <TimeRulers>
                                <cc1:TimeRuler></cc1:TimeRuler>
                            </TimeRulers>

                            <AppointmentDisplayOptions ColumnPadding-Left="2" ColumnPadding-Right="4"></AppointmentDisplayOptions>
                        </WorkWeekView>

                        <WeekView Enabled="false"></WeekView>

                        <MonthView ViewSelectorItemAdaptivePriority="5"></MonthView>

                        <TimelineView ViewSelectorItemAdaptivePriority="3"></TimelineView>

                        <FullWeekView Enabled="true">
                            <TimeRulers>
                                <cc1:TimeRuler></cc1:TimeRuler>
                            </TimeRulers>

                            <AppointmentDisplayOptions ColumnPadding-Left="2" ColumnPadding-Right="4"></AppointmentDisplayOptions>
                        </FullWeekView>

                        <AgendaView DayHeaderOrientation="Auto" ViewSelectorItemAdaptivePriority="1"></AgendaView>
                    </Views>

                    <OptionsToolTips AppointmentToolTipCornerType="None"></OptionsToolTips>

                </dxwschs:ASPxScheduler>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Appointments] WHERE [UniqueID] = @UniqueID" InsertCommand="INSERT INTO [Appointments] ([Type], [StartDate], [EndDate], [AllDay], [Subject], [Location], [Description], [Status], [Label], [ResourceID], [ResourceIDs], [ReminderInfo], [RecurrenceInfo], [CustomField1]) VALUES (@Type, @StartDate, @EndDate, @AllDay, @Subject, @Location, @Description, @Status, @Label, @ResourceID, @ResourceIDs, @ReminderInfo, @RecurrenceInfo, @CustomField1)" SelectCommand="SELECT * FROM [Appointments]" UpdateCommand="UPDATE [Appointments] SET [Type] = @Type, [StartDate] = @StartDate, [EndDate] = @EndDate, [AllDay] = @AllDay, [Subject] = @Subject, [Location] = @Location, [Description] = @Description, [Status] = @Status, [Label] = @Label, [ResourceID] = @ResourceID, [ResourceIDs] = @ResourceIDs, [ReminderInfo] = @ReminderInfo, [RecurrenceInfo] = @RecurrenceInfo, [CustomField1] = @CustomField1 WHERE [UniqueID] = @UniqueID">
                    <DeleteParameters>
                        <asp:Parameter Name="UniqueID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Type" Type="Int32" />
                        <asp:Parameter Name="StartDate" Type="DateTime" />
                        <asp:Parameter Name="EndDate" Type="DateTime" />
                        <asp:Parameter Name="AllDay" Type="Boolean" />
                        <asp:Parameter Name="Subject" Type="String" />
                        <asp:Parameter Name="Location" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Status" Type="Int32" />
                        <asp:Parameter Name="Label" Type="Int32" />
                        <asp:Parameter Name="ResourceID" Type="Int32" />
                        <asp:Parameter Name="ResourceIDs" Type="String" />
                        <asp:Parameter Name="ReminderInfo" Type="String" />
                        <asp:Parameter Name="RecurrenceInfo" Type="String" />
                        <asp:Parameter Name="CustomField1" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Type" Type="Int32" />
                        <asp:Parameter Name="StartDate" Type="DateTime" />
                        <asp:Parameter Name="EndDate" Type="DateTime" />
                        <asp:Parameter Name="AllDay" Type="Boolean" />
                        <asp:Parameter Name="Subject" Type="String" />
                        <asp:Parameter Name="Location" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Status" Type="Int32" />
                        <asp:Parameter Name="Label" Type="Int32" />
                        <asp:Parameter Name="ResourceID" Type="Int32" />
                        <asp:Parameter Name="ResourceIDs" Type="String" />
                        <asp:Parameter Name="ReminderInfo" Type="String" />
                        <asp:Parameter Name="RecurrenceInfo" Type="String" />
                        <asp:Parameter Name="CustomField1" Type="String" />
                        <asp:Parameter Name="UniqueID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <dxwschs:ASPxDateNavigator ID="ASPxDateNavigator1" runat="server" ClientIDMode="AutoID" MasterControlID="ASPxScheduler1">
                    <Properties Rows="3">
                    </Properties>
                </dxwschs:ASPxDateNavigator>
            </td>
        </tr>
    </table>
</asp:Content>
