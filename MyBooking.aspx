<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyBooking.aspx.cs" Inherits="Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 97%;
            height: 357px;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table align="center" class="auto-style1">
            <tr>
                <td colspan="3" style="text-align: center">MY BOOKINGS</td>
            </tr>
            <tr>
                <td class="auto-style2">ONGOING</td>
                <td class="auto-style2">COMPLETED</td>
                <td class="auto-style2">CANCELED</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Height="35px" OnClick="Button1_Click" Text="SHOW" Width="140px" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" Height="35px" OnClick="Button2_Click" Text="SHOW" Width="140px" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button3" runat="server" Height="35px" OnClick="Button3_Click" Text="SHOW" Width="140px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
