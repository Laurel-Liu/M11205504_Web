<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="M11205504_Web.Yearly._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Year:"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="Yearly" DataTextField="Year" DataValueField="Year"></asp:DropDownList>
   <asp:SqlDataSource ID="Yearly" runat="server" ConnectionString="<%$ ConnectionStrings:M11205504ConnectionString %>" 
    SelectCommand="SELECT DISTINCT [Year] FROM [High_CO2_Emissions_From_Coal_Desc] ORDER BY [Year] DESC">
</asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Yearly_content">
        <Columns>
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="Subregion" HeaderText="Subregion" SortExpression="Subregion" />
            <asp:BoundField DataField="CO2_Emissions_From_Coal" HeaderText="CO2_Emissions_From_Coal" SortExpression="CO2_Emissions_From_Coal" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="Yearly_content" runat="server" ConnectionString="<%$ ConnectionStrings:M11205504ConnectionString %>" SelectCommand="SELECT DISTINCT [Country], [Subregion], [CO2_Emissions_From_Coal], [Year] FROM [High_CO2_Emissions_From_Coal_Desc] WHERE ([Year] = @Year)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Year" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
