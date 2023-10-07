<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sign Up Page.aspx.cs" Inherits="Sign_Up_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: auto;
            width: auto;
        }
        .auto-style8 {
            width: 46%;
            height: 430px;
        }
        .auto-style9 {
            height: 50px;
        }
        .auto-style12 {
            height: 50px;
            width: 215px;
        }
        .auto-style13 {
            height: 50px;
            width: 215px;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style16 {
            font-size: xx-large;
            text-decoration: underline;
        }
        </style>
</head>
<body style="background-color: #FFFFFF; height: auto; width: auto;">
    <form id="form1" runat="server">
        <div style="background-image: url('Photos/1900851.png'); background-repeat: no-repeat; background-attachment: scroll; background-position: center center; height: auto; width: auto; margin-top: 0px;" class="auto-style14">

            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;<span class="auto-style16">Create Account&nbsp; <br />
            </span>
            <br />
            <br />
            <table align="center" class="auto-style8">
                <tr>
                    <td class="auto-style12">NAME </td>
                    <td class="auto-style9">&nbsp;
                        <br />
                    <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="300px" ValidationGroup="g1" BackColor="Transparent" ForeColor="Black"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Name"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp; CONTACT NO&nbsp; </td>
                    <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="300px" ValidationGroup="g2"  BackColor="Transparent"></asp:TextBox>
                    &nbsp;
                        <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Contact No " ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;PASSWORD </td>
                    <td class="auto-style9">
                        <br />
                    <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="300px" TextMode="Password" ValidationGroup="g3" BackColor="Transparent"></asp:TextBox>
                        <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">CONFIRM PASWORD</td>
                    <td class="auto-style9">
                        <br />
                    <asp:TextBox ID="TextBox4" runat="server" Height="40px" Width="300px" TextMode="Password" ValidationGroup="g4" BackColor="Transparent"></asp:TextBox>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Please Enter The Right Passsword"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">IS ADMIN</td>
                    <td class="auto-style9">
                        <asp:RadioButton ID="rbYes" runat="server" Text="Yes" GroupName="IsAdmin" OnCheckedChanged="rbYes_CheckedChanged" />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="rbNo" runat="server" Text="No" GroupName="IsAdmin" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" BackColor="Transparent" OnClick="Button2_Click" Text="Done" Width="100px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style9">
                    <asp:TextBox ID="txtUsrnm" runat="server" Height="40px" Width="300px" BackColor="Transparent" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Height="50px" Text="Create Account" Width="200px" OnClick="Button1_Click1" BackColor="Transparent" />
                    <br />
            <br />
                   <a href ="Log In Page.aspx">
                       Alredy Have Account ! Log In</a>
            <br />
            <br />

        </div>
    </form>
</body>
</html>
