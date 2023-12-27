<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report1.aspx.cs" Inherits="M11205504_Web.Report._default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CO2 Emissions Report</title>
    <style type="text/css">
        .grid-view {
            font-family: Arial, sans-serif;
            font-size: 12px;
            width: 100%;
            border-collapse: collapse;
        }
        .grid-view th, .grid-view td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        .grid-view th {
            background-color: #f2f2f2;
        }
        .print-button {
            margin-bottom: 20px; /* 更新這裡使按鈕在下方有間隔 */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="btnPrint" runat="server" Text="列印報表" OnClick="btnPrint_Click" CssClass="print-button" />
        <asp:GridView ID="GridView1" runat="server" CssClass="grid-view" AutoGenerateColumns="True">
        </asp:GridView>
    </form>
</body>
</html>
