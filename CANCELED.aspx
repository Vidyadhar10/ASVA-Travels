<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CANCELED.aspx.cs" Inherits="CANCELED" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 97%;
            height: 454px;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="auto-style1">
            <tr>
                <td colspan="2" style="text-align: center">CANCELED</td>
            </tr>
            <tr>
                <td style="text-align: center">BUS NAME</td>
                <td style="text-align: center">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">SOURCE</td>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">DESTINATION</td>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">DAY &amp; DATE</td>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">PRICE</td>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
