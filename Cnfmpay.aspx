<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cnfmpay.aspx.cs" Inherits="Cnfmpay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 98%;
            height: 524px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3
        {
            border-style: solid;
            border-width: 2px;
        }
        .auto-style4
        {
            border-style: solid;
            border-width: 0px;
        }
        .auto-style5
        {
            text-align: center;
            border-style: solid;
            border-width: 2px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;<table class="auto-style1">
            <tr>
                <td colspan="2" style="text-align: center" class="auto-style4">USER INFO</td>
            </tr>
            <tr>
                <td style="text-align: center" class="auto-style3">NAME :</td>
                <td style="text-align: center" class="auto-style3">
                    <asp:Label ID="lblUsrNm" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" class="auto-style3">MOBILE NO. :</td>
                <td style="text-align: center" class="auto-style3">
                    <asp:Label ID="lblMoNo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">BOOKING DETAILS</td>
            </tr>
            <tr>
                <td class="auto-style5">BUS NAME :</td>
                <td class="auto-style5">
                    <asp:Label ID="lblBusName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">BOARDING :</td>
                <td class="auto-style5">
                    <asp:Label ID="lblBpoint" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">DROPPING :</td>
                <td class="auto-style5">
                    <asp:Label ID="lblDpoint" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">DATE :</td>
                <td class="auto-style5">
                    <asp:Label ID="lbldt" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">SEAT NO. :</td>
                <td class="auto-style5">
                    <asp:Label ID="lblSelectedSeats" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">TOTAL PRICE :</td>
                <td class="auto-style5">
                    <asp:Label ID="lblTotalPrc" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" Height="44px" OnClick="Button1_Click" Text="PAY" Width="133px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>