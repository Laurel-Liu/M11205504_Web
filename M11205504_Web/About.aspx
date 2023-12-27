<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="M11205504_Web.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Hi! This is the application page for M11205504. Happy New Year!!!</h3>
        <asp:Image ID="NewYearImage" runat="server" ImageUrl="~/Images/newyear2024.png" AlternateText="Happy New Year 2024" />



    </main>
</asp:Content>
