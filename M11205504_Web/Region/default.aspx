<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="M11205504_Web.Region._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Regions"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="Region" DataTextField="Region" DataValueField="Region"></asp:DropDownList>
    <asp:SqlDataSource ID="Region" runat="server" ConnectionString="<%$ ConnectionStrings:M11205504ConnectionString %>" SelectCommand="SELECT DISTINCT [Region] FROM [Region_Subregion_CO2_Emissions_Desc]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="Region_content">
        <Columns>
            <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
            <asp:BoundField DataField="Subregion" HeaderText="Subregion" SortExpression="Subregion" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Total_Cement_CO2_Emissions" HeaderText="Total_Cement_CO2_Emissions" SortExpression="Total_Cement_CO2_Emissions" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="Region_content" runat="server" ConnectionString="<%$ ConnectionStrings:M11205504ConnectionString %>" SelectCommand="SELECT * FROM [Region_Subregion_CO2_Emissions_Desc] WHERE ([Region] = @Region)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Region" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
