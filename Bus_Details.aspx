<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bus_Details.aspx.cs" Inherits="Bus_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            border-style: solid;
            border-width: 2px;
            width: 100%;
            height: 400px;
        }
        .auto-style3 {
            border: 1px solid #336699;
            font-size: large;
            height: 65px;
            width: 300px;
        }
        .auto-style4
        {
            border: 1px solid #336699;
            height: 65px;
            width: 300px;
        }
        .auto-style5
        {
            border: 1px solid #336699;
            height: 136px;
        }
        .auto-style6
        {
            border: 1px solid #336699;
            height: 114px;
        }
        .auto-style7
        {
            color: #660033;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body style="height: 752px; background-color: #295d51; width: 1532px; text-align: center; margin-left: 0px; margin-top: 0px;">
    <form id="form1" runat="server">
    <div style="text-align: center">
        
        <h1 class="auto-style7">Available Bus Details</h1>
            <br />
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" align="center" Width="1000px">
                <ItemTemplate>

               
        <table class="auto-style1" align="center" >
            

            
            <tr>
                <td colspan="2" class="auto-style5">
                    <asp:Image ID="Image1" runat="server" Height="70px" Width="100px" ImageUrl="~/Photos/Busimage.png" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Bus Name : </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="150px" Text='<%# Eval("Bus_name") %>' ReadOnly="True"></asp:TextBox>
                    <%--                    <asp:Label ID="Label1" runat="server"  Text='<%# Eval("Price") %>' ></asp:Label>--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Price : </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtBusName" runat="server" Height="35px" Width="150px" Text='<%# Eval("Price") %>' ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style6">
                    <a href="Seat_Matrix.aspx?BusName=<%#Eval("Bus_name") %>">
                        Available Seats

                    </a>
                    <br />
                    <asp:Label ID="lblStatus" runat="server"></asp:Label>
                    </td>
            </tr>
        </table>
                     </ItemTemplate>
                    </asp:DataList>
        
                 
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
