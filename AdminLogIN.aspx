<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogIN.aspx.cs" Inherits="AdminLogIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            font-size: xx-large;
            text-align: center;
            }
        .auto-style2 {
            width: 52%;
            height: 270px;
        }
        .auto-style4 {
            width: 280px;
            height: 134px;
            text-align: center;
        }
        .auto-style5 {
            height: 134px;
            text-align: center;
        }
        .auto-style3 {
            width: 280px;
            text-align: center;
        }
        .auto-style6
        {
            text-align: center;
        }
        .auto-style7
        {
            color: #006666;
        }
        .auto-style8
        {
            color: #FF9900;
        }
        .auto-style9
        {
            background-color: #662100;
        }
    </style>
</head>
<body style="background-color: #004D71">
    <div class="auto-style1">
        <strong>
        <span class="auto-style8">Admin Log In</span><span class="auto-style7"> </span>
        </strong>
        <br />
        <br />
        <br />
        </div>
    <form id="form1" runat="server">
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style4">USERNAME :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" Height="45px" Width="328px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Please Enter UserName!"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">PASSWORD :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="Transparent" Height="45px" Width="328px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Please Enter Password!"></asp:RequiredFieldValidator>
                    </td>
            </tr>
        </table>
        <div class="auto-style6">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Button ID="btnAdminLogin" runat="server" BackColor="Transparent" Height="33px" Text="Login" Width="126px" CssClass="auto-style9" OnClick="btnAdminLogin_Click" />
        <br />
        <br />
        </div>
    <div>
    
    </div>
    </form>
</body>
</html>
