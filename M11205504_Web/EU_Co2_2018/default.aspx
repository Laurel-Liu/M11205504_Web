<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="M11205504_Web.EU_Co2_2018._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="EU_Co2">
        <Columns>
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="CO2_per_capita" HeaderText="CO2_per_capita" SortExpression="CO2_per_capita" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="EU_Co2" runat="server" ConnectionString="<%$ ConnectionStrings:M11205504ConnectionString %>" ProviderName="<%$ ConnectionStrings:M11205504ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Co2_Per_Capita_Europe_2018_Desc]"></asp:SqlDataSource>
</asp:Content>
