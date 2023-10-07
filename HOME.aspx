<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HOME.aspx.cs" Inherits="HOME" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            color: #000000;
            background-color: #FFFFFF;
        }
        #form1
        {
            height: 62px;
            width: 1529px;
            text-align: right;
            background-color: #CC00CC;
        }
        .auto-style2
        {
            border-style: solid;
            border-width: 2px;
width: 28%;
            height: 303px;
            }
        .auto-style7
        {
            border-style: solid;
            border-width: 2px;
            text-align: center;
            color: #000000;
            height: 50px;
            width: 430px;
        }
        .auto-style8
        {
            border-style: solid;
            border-width: 2px;
            text-align: center;
            height: 50px;
            width: 430px;
        }
        .auto-style13
        {
            border-style: solid;
            border-width: 2px;
        }
    </style>
</head>
<body style="height: 752px; background-color: #295d51; width: 1532px; text-align: center; margin-left: 0px; margin-top: 0px;">
    <form id="form1" runat="server">
    <div>
        <div style="background-image: url('p/travel.jpg'); background-repeat: no-repeat; background-attachment: scroll; background-position: center center; height: 755px; width: 1535px;">

        <h1 class="auto-style1" style="text-align: center; height: 63px; width: 1535px;">
            <asp:Image ID="Image5" runat="server" Height="60px" ImageUrl="~/Photos/logo.jpg" Width="60px" />
&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageUrl="~/Photos/TRV.jpg" OnClick="ImageButton1_Click" Width="166px" ToolTip="Home Page" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome :)&nbsp;&nbsp; <asp:Label ID="lblUser" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" AlternateText="Your Account" Height="40px" ImageUrl="~/Photos/acc.png" OnClick="ImageButton2_Click" style="margin-bottom: 0px; text-align: center;" Width="40px" ToolTip="Account" />

            <br />

        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style8">
                    <asp:DropDownList ID="ddlSourceCity" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Arial Narrow" Height="25px" Width="200px" BackColor="Transparent" Font-Size="Medium" ForeColor="#003366">
                    </asp:DropDownList>
&nbsp;<asp:Image ID="Image1" runat="server" Height="28px" ImageUrl="~/Photos/Vector-click-hand-icons_200x200.png" Width="44px" ImageAlign="AbsMiddle" />
                    <br />
                    <asp:Label ID="lblSrcCt" runat="server" Font-Size="Small" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:DropDownList ID="ddlDestCity" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Arial Narrow" Height="25px" Width="200px" BackColor="Transparent" Font-Size="Medium" ForeColor="#003366">
                    </asp:DropDownList>
                &nbsp;<asp:Image ID="Image2" runat="server" Height="28px" ImageUrl="~/Photos/desti.png" Width="44px" ImageAlign="AbsMiddle" />
                    <br class="auto-style13" />
                    <asp:Label ID="lblDestCt" runat="server" Font-Size="Small" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:TextBox ID="txtDate" runat="server" Height="25px" Width="200px" BackColor="Transparent" Enabled="False" Font-Bold="True" Font-Names="Arial Narrow" Font-Size="Medium" ForeColor="#003366"></asp:TextBox>
&nbsp;<asp:ImageButton ID="btnCalender" runat="server" Height="28px" ImageUrl="~/Photos/calender.png" Width="40px" ImageAlign="AbsMiddle" OnClick="btnCalender_Click" />
                    <asp:Calendar ID="Calendar1" runat="server" Height="190px" Width="350px" BackColor="Transparent" BorderColor="White" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender" BorderWidth="1px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" BorderColor="White" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#333333" Font-Bold="True" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" BorderColor="Black" BorderWidth="4px" />
                        <TodayDayStyle BackColor="#CCCCCC"  />
                    </asp:Calendar>
                    <br />
                    <asp:Label ID="lblCalender" runat="server" Font-Size="Small" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="btnSearch" runat="server" Font-Bold="True" Font-Italic="True" Height="30px" style="background-color: #1B83A6" Text="Search" Width="200px" OnClick="btnSearch_Click" />
                </td>
            </tr>
        </table>
            </h1>

        </div>
    
    </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
