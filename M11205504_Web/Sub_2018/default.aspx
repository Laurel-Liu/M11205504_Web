<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="M11205504_Web.Sub_2018._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="SubRegions"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Sub_2018" DataTextField="Country" DataValueField="Country" AutoPostBack="True"></asp:DropDownList>
    <asp:SqlDataSource ID="Sub_2018" runat="server" ConnectionString="<%$ ConnectionStrings:M11205504ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Subregion_CO2_Emissions_2018_Desc] ORDER BY [Country]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Sub_2018content">
        <Columns>
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="Population" HeaderText="Population" SortExpression="Population" />
            <asp:BoundField DataField="GDP" HeaderText="GDP" SortExpression="GDP" />
            <asp:BoundField DataField="Flaring_CO2_Percentage" HeaderText="Flaring_CO2_Percentage" SortExpression="Flaring_CO2_Percentage" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="Sub_2018content" runat="server" ConnectionString="<%$ ConnectionStrings:M11205504ConnectionString %>" SelectCommand="SELECT * FROM [Subregion_CO2_Emissions_2018_Desc] WHERE ([Country] = @Country)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Country" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
