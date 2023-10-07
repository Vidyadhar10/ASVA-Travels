<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PAY.aspx.cs" Inherits="PAY" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            text-align: center;
            height: 208px;
        }
        .auto-style2
        {
            width: 56%;
            height: 84px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        THANK YOU!!!<br />
        <br />
        <table align="center" class="auto-style2">
            <tr>
                <td>Feedback :</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="31px" OnClick="Button2_Click" Text="Give Feedback" Width="142px" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Font-Bold="True" Height="31px" OnClick="Button3_Click" Text="No Thanks :)" Width="113px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
