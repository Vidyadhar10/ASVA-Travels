<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 96%;
            height: 474px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            width: 100%;
            height: 186px;
        }
        .auto-style5 {
            text-align: center;
            height: 66px;
            width: 191px;
        }
        .auto-style6 {
            height: 66px;
        }
        .auto-style8 {
            height: 60px;
        }
        .auto-style11 {
            text-align: center;
            height: 64px;
            width: 300px;
        }
        .auto-style12 {
            height: 64px;
        }
        .auto-style13 {
            text-align: center;
            height: 68px;
            width: 300px;
        }
        .auto-style14 {
            height: 68px;
        }
        </style>
</head>
<body style="height: 487px; width: 1346px">
    <form id="form1" runat="server">
    <div style="height: 492px">
    
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">DETAILS</td>
            </tr>
            <tr>
                <td class="auto-style11">NAME :</td>
                <td class="auto-style12" style="text-align: center">
                                <asp:Label ID="lblNm" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">MOBILE NO.:</td>
                <td class="auto-style14" style="text-align: center">
                    <asp:Label ID="lblMoNo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">&nbsp;<table class="auto-style4">
                        <tr>
                            <td class="auto-style5">SELECTED SEATS:</td>
                            <td class="auto-style6" style="text-align: center">
                                <asp:Label ID="lblSeats" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">TOTAL PRICE:</td>
                            <td class="auto-style6" style="text-align: center">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8" colspan="2" style="text-align: center">
                                <asp:Button ID="Button1" runat="server" Height="41px" OnClick="Button1_Click" Text="CONFIRM" Width="99px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
