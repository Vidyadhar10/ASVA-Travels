<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main Account Page.aspx.cs" Inherits="Main_Account_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            border-style: solid;
            border-width: 0px;
            width: 95%;
            height: 200px;
        }
        .auto-style2 {
            border-style: solid;
            border-width: 2px;
            height: 100px;
        }
        .auto-style3 {
            width: 95%;
            height: 400px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style8 {
            text-align: center;
            height: 100px;
            border-style: solid;
            border-width: 2px;
        }
        .auto-style10 {
            height: 100px;
            border-style: solid;
            border-width: 2px;
        }
        .auto-style11 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 1098px; " class="auto-style4">
    
        <asp:Image ID="Image1" runat="server" Height="125px" ImageUrl="~/Pic/icon.png" Width="149px" style="text-align: center" />
        <br />
        <br />
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style11">&nbsp;Name :&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><span class="auto-style11">Contact No :</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <table align="center" class="auto-style3">
            <tr>
                <td class="auto-style10">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="X-Large" ForeColor="Black" OnClick="LinkButton1_Click">My Bookings</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="X-Large" ForeColor="Black" OnClick="LinkButton2_Click">Privacy Policy</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="X-Large" ForeColor="Black" OnClick="LinkButton3_Click">Help</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="X-Large" ForeColor="Black" OnClick="LinkButton4_Click">Log Out</asp:LinkButton>
                </td>
            </tr>
        </table>
        <div class="auto-style4">
        <br />
        <br />
        <br />
        </div>
    
    </div>
    </form>
</body>
</html>
