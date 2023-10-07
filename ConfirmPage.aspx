<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ConfirmPage.aspx.cs" Inherits="ConfirmPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 87%;
            height: 449px;
        }
        .auto-style2 {
            font-size: xx-large;
            text-align: center;
            text-decoration: underline;
            color: #800080;
            height: 80px;
        }
        .auto-style5 {
            width: 353px;
            text-align: center;
        }
        .auto-style13 {
            width: 421px;
            height: 50px;
            font-size: x-large;
            text-align: center;
        }
        .auto-style14 {
            width: 500px;
            height: 50px;
        }
        .auto-style15
        {
            height: 50px;
            font-size: x-large;
            text-align: center;
        }
        .auto-style16
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 750px; width: 1200px" class="auto-style16">
    
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="3">Complete Your Booking</td>
            </tr>
            <tr>
                <td class="auto-style13">Source</td>
                <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtSrc" runat="server" Height="35px" style="text-align: center" Width="225px"></asp:TextBox>
                </td>
                <td class="auto-style5" rowspan="4">
                    <br />
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Route</asp:LinkButton>
                    <br />
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="300px" Width="300px" />
                    <br />
&nbsp;
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Destination</td>
                <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtDest" runat="server" Height="35px" style="text-align: center" Width="225px" Enabled="False"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">Date and Time</td>
                <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtdt" runat="server" Height="35px" style="text-align: center" Width="225px" Enabled="False" ></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15" colspan="2">&nbsp;</td>
            </tr>
            </table>
    
        <div class="auto-style16">
            <br />
            <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click1" Text="Continue" Width="98px" />
        </div>
    
    </div>
    </form>
</body>
</html>
