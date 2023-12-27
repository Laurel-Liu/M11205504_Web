<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Report2.aspx.cs" Inherits="M11205504_Web.Report2.Report2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button ID="btnPrint" runat="server" Text="列印報表" OnClick="btnPrint_Click" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Report2_Data">
        <Columns>
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="Subregion" HeaderText="Subregion" SortExpression="Subregion" />
            <asp:BoundField DataField="CO2_Emissions_From_Coal" HeaderText="CO2_Emissions_From_Coal" SortExpression="CO2_Emissions_From_Coal" />
        </Columns>
    </asp:GridView>
<asp:SqlDataSource ID="Report2_Data" runat="server" ConnectionString="<%$ ConnectionStrings:M11205504ConnectionString %>" SelectCommand="SELECT * FROM [High_CO2_Emissions_From_Coal_Desc]"></asp:SqlDataSource>
</asp:Content>
