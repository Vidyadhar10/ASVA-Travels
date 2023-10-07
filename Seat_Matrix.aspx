<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Seat_Matrix.aspx.cs" Inherits="Seat_Matrix" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            border-style: solid;
            border-width: 2px;
            padding: 1px 4px;
            width: 15%;
            height: 404px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3
        {
            color: #660033;
            background-color: #FFFFFF;
        }
        .auto-style4
        {
            width: 58%;
            height: 161px;
        }
        .auto-style6
        {
            width: 405px;
            text-align: center;
        }
        .auto-style7
        {
            width: 405px;
            text-align: center;
            height: 50px;
        }
        .auto-style8
        {
            text-align: center;
            height: 50px;
            width: 336px;
        }
        .auto-style10
        {
            text-align: center;
            width: 111px;
        }
        .auto-style11
        {
            text-align: center;
            width: 102px;
        }
        .auto-style12
        {
            text-align: center;
            height: 33px;
        }
        .auto-style17
        {
            text-align: left;
        }
        .auto-style16
        {
            height: 125px;
            border-style: solid;
            border-width: 2px;
        }
        .auto-style14
        {
            width: 300px;
            height: 100px;
        }
        .auto-style18
        {
            height: 707px;
        }
        .auto-style19
        {
            text-align: center;
            width: 336px;
        }
    </style>
</head>
<body style="background-color: #CCCCCC">
    <h1 style="height: 65px; background-color: #FFFFFF" class="auto-style2"><span class="auto-style3">Bus Seating Arrangement</span><br />
    </h1>
    <form id="form1" runat="server" class="auto-style18">
        <div style="background-image: none; background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
    
            <div class="auto-style17">
    
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
    
            <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="imgDriver" runat="server" Height="40px" Width="40px" ImageUrl="~/Photos/driver image.png" />
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="R01" runat="server" Height="30px" OnClick="R01_Click" Text="R01" Width="45px" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="L02" runat="server" Height="30px" Text="L02" Width="45px" OnClick="L02_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="R03" runat="server" Height="30px" Text="R03" Width="45px" OnClick="R03_Click" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="L04" runat="server" Height="30px" Text="L04" Width="45px" OnClick="L04_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="R05" runat="server" Height="30px" Text="R05" Width="45px" OnClick="R05_Click" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="L06" runat="server" Height="30px" Text="L06" Width="45px" OnClick="L06_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="R07" runat="server" Height="30px" Text="R07" Width="45px" OnClick="R07_Click" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="L08" runat="server" Height="30px" Text="L08" Width="45px" OnClick="L08_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="R09" runat="server" Height="30px" Text="R09" Width="45px" OnClick="R09_Click" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="L10" runat="server" Height="30px" Text="L10" Width="45px" OnClick="L10_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="R11" runat="server" Height="30px" Text="R11" Width="45px" OnClick="R11_Click" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="L12" runat="server" Height="30px" Text="L12" Width="45px" OnClick="L12_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="R13" runat="server" Height="30px" Text="R13" Width="45px" OnClick="R13_Click" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="L14" runat="server" Height="30px" Text="L14" Width="45px" OnClick="L14_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="R15" runat="server" Height="30px" Text="R15" Width="45px" OnClick="R15_Click" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="L16" runat="server" Height="30px" Text="L16" Width="45px" OnClick="L16_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="R17" runat="server" Height="30px" Text="R17" Width="45px" OnClick="R17_Click" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="L18" runat="server" Height="30px" Text="L18" Width="45px" OnClick="L18_Click" />
                    </td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">
                    <asp:Button ID="Button1" runat="server" Height="28px"  Text="Confirm" Width="71px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    
            <br />
            <br />
            <table  align="right" class="auto-style16" >
            <tr>
                <td  rowspan="11" class="auto-style14">
                    <asp:Button ID="btnShowBooked" runat="server" Enabled="False" Height="25px" Width="30px" />
&nbsp; <asp:Label ID="Label3" runat="server" Text="Already Booked Seats"></asp:Label>
                    <br />
                    <asp:Button ID="btnShowSelected" runat="server" Enabled="False" Height="25px" Width="30px" />
&nbsp; <asp:Label ID="Label1" runat="server" Text="Selected Seats"></asp:Label>
                    <br />
                    <asp:Button ID="btnShowAvailable" runat="server" Enabled="False" Height="25px" Width="30px" />
&nbsp; <asp:Label ID="Label2" runat="server" Text="Available Seats"></asp:Label>
                </td>
            </tr>
        </table>
    
        </div>
        <table align="center" class="auto-style4">
            <tr>
                <td class="auto-style7">Selected Seats :</td>
                <td class="auto-style8">
                    <asp:Label ID="lblSelectedSeats" runat="server"></asp:Label>
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Select Boarding Point :</td>
                <td class="auto-style8">
                    <asp:DropDownList ID="ddlBpt" runat="server" Height="30px" Width="250px" OnSelectedIndexChanged="ddlBpt_SelectedIndexChanged">
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="lblBpoint" runat="server"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtTime" runat="server" Enabled="False" Height="30px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Select Dropping Point :</td>
                <td class="auto-style19">
                    <asp:DropDownList ID="ddlDpt" runat="server" Height="30px"  Width="250px">
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="lblDpoint" runat="server"></asp:Label>
                </td>
                <td class="auto-style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Button ID="Button2" runat="server" Height="29px"  Text="DONE" Width="142px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
