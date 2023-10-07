<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHOME.aspx.cs" Inherits="AdminHOME" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2
        {
            border: 2px solid #669999;
            width: 80%;
            height: 125px;
        }
        .auto-style3
        {
            text-align: center;
        }
        .auto-style4
        {
            width: 100%;
        }
        .auto-style5
        {
            height: 26px;
        }
        .auto-style6
        {
            height: 26px;
            font-size: xx-large;
            width: 299px;
        }
        .auto-style7
        {
            text-align: center;
            width: 226px;
        }
        .auto-style9
        {
            text-align: center;
            width: 400px;
        }
        .auto-style10
        {
            text-align: center;
            height: 62px;
        }
        .auto-style11
        {
            text-align: center;
            width: 126px;
        }
        .auto-style12
        {
            border: 2px solid #669999;
            width: 95%;
            height: 125px;
        }
        .auto-style13
        {
            font-size: large;
            color: #FF9900;
        }
        .auto-style14
        {
            font-size: small;
            color: #FF9900;
        }
        .auto-style15
        {
            color: #FF9900;
            font-size: large;
        }
        .auto-style16
        {
            font-size: large;
            color: #FF0000;
        }
        .auto-style17
        {
            text-decoration: none;
        }
        .auto-style18
        {
            border: 2px solid #669999;
            width: 92%;
            height: 123px;
        }
        .auto-style19
        {
            text-align: center;
            width: 400px;
            height: 35px;
        }
        .auto-style20
        {
            text-align: center;
            width: 226px;
            height: 35px;
        }
        .auto-style21
        {
            text-align: center;
            width: 126px;
            height: 35px;
        }
        .box
        {
            border:solid 2px red;
            position:relative;
        }
        .SideBar
        {
            border-left:solid 5px Yellow;
            height:500px;
            
        }
    </style>
</head>
<body style="background-color: #004D71" >
    <form id="form1" runat="server">
    <div style="height: 1306px" align="center">
    <h1 style="text-align: left; height: 65px; width:1535px; background-color: #FFFFFF">
            <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl="~/Photos/logo.jpg" Width="60px" />
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageUrl="~/Photos/TRV.jpg"  Width="166px" ToolTip="Home Page" style="text-align: left" OnClick="btnHomeUsr_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <span class="auto-style13">WELCOME</span> <span class="auto-style14">SuperUser :)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="Users.aspx" class="auto-style17">
                        <span class="auto-style16">REGISTERED USERS
                                                                                                                                                                                                                                                                                                                                                                  </span>
       <!--           
        <table class="auto-style1">
            <tr>
                <td style="text-align: center">
                   <%-- <h1 style="text-align: left; height: 65px; width:1535px; background-color: #FFFFFF">
            <asp:Image ID="Image5" runat="server" Height="60px" ImageUrl="~/Photos/logo.jpg" Width="60px" />
                        <asp:ImageButton ID="btnHomeUsr" runat="server" Height="60px" ImageUrl="~/Photos/TRV.jpg"  Width="166px" ToolTip="Home Page" style="text-align: left" OnClick="btnHomeUsr_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <span class="auto-style13">WELCOME</span> <span class="auto-style14">SuperUser :)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="" class="auto-style17">
                        <span class="auto-style16">USERS
                    --%>                                                                                                                                                                                                                                                                                                                                               </span>
                        -->                                                                                                                                                                                                                                                                                                                                         </a>&nbsp;&nbsp;&nbsp; </span></h1>
                </td>
            </tr>
        </table>&nbsp;
         


        <table align="center" class="auto-style4">
            <tr>
                <td class="auto-style6">
                    <asp:LinkButton ID="btnHomeCng" runat="server" Font-Underline="False" ForeColor="#FFFF99" style="font-size: x-large; color: #FFFF99; background-color: #669999" OnClick="btnHomeCng_Click">Home</asp:LinkButton>
                </td>
                <td class="auto-style5" rowspan="5">
                    <asp:Panel ID="pnlHome" runat="server" Height="150px">
                        <table align="center" class="auto-style2">
                            <tr>
                                <td class="auto-style9">Enter City Name :</td>
                                <td class="auto-style7">
                                    <asp:TextBox ID="txtCTName" runat="server" Height="25px" Width="200px" style="margin-left: 0px"></asp:TextBox>
                                </td>
                                <td class="auto-style3">
                                    <asp:Label ID="lblOperation" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10" colspan="3">
                                    <asp:Button ID="btnAdd" runat="server" Font-Bold="True" Font-Italic="True"  Text="ADD" OnClick="btnAdd_Click" />
                                    &nbsp;<asp:Button ID="btnDelete" runat="server" Font-Bold="True" Font-Italic="True"  Text="DELETE" OnClick="btnDelete_Click" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <asp:Panel ID="pnlSeatMatrix" runat="server" Height="150px">
                        <table align="center" class="auto-style12">
                            <tr>
                                <td class="auto-style9">Enter Boarding Point :</td>
                                <td class="auto-style7">
                                    <asp:TextBox ID="txtBPoint" runat="server" Height="25px" Width="200px" style="margin-left: 0px"></asp:TextBox>
                                </td>
                                <td class="auto-style7">
                                    <asp:TextBox ID="txtBFID" runat="server" Height="25px" style="margin-left: 0px" Width="50px"></asp:TextBox>
                                </td>
                                <td class="auto-style11">
                                    <asp:Label ID="lblBPoint" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Enter Dropping Point :</td>
                                <td class="auto-style7">
                                    <asp:TextBox ID="txtDPoint" runat="server" Height="25px" style="margin-left: 0px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="auto-style7">
                                    <asp:TextBox ID="txtDFID" runat="server" Height="25px" style="margin-left: 0px" Width="50px"></asp:TextBox>
                                </td>
                                <td class="auto-style11">
                                    <asp:Label ID="lblDPoint" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10" colspan="4">
                                    <asp:Button ID="btnAddSM" runat="server" Font-Bold="True" Font-Italic="True"  Text="ADD" OnClick="btnAddSM_Click" />
                                    &nbsp;<asp:Button ID="btnDeleteSM" runat="server" Font-Bold="True" Font-Italic="True"  Text="DELETE" OnClick="btnDeleteSM_Click" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <div class="box">
                            <h2>Add Bus</h2>
                        </div>
                    </asp:Panel>
                    <br />
                    <asp:Panel ID="pnlQuestions" runat="server" Height="150px">
                    </asp:Panel>
                    <asp:Panel ID="pnlBusDetails" runat="server" Height="150px">
                        <table align="center" class="auto-style18">
                            <tr>
                                <td class="auto-style19">Enter Bus Name :</td>
                                <td class="auto-style20">
                                    <asp:TextBox ID="txtBusName" runat="server" Height="25px" Width="200px" style="margin-left: 0px"></asp:TextBox>
                                </td>
                                <td class="auto-style21">
                                    <asp:Label ID="lblBusnm" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Enter New Price(to add or update) :</td>
                                <td class="auto-style7">
                                    <asp:TextBox ID="txtPrice" runat="server" Height="25px" style="margin-left: 0px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="auto-style11">
                                    <asp:Label ID="lblprice" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10" colspan="3">
                                    <asp:Button ID="btnAddBus" runat="server" Font-Bold="True" Font-Italic="True"  Text="ADD" OnClick="btnAddBus_Click"  />
                                    &nbsp;<asp:Button ID="btnDelBus" runat="server" Font-Bold="True" Font-Italic="True"  Text="DELETE" OnClick="btnDelBus_Click"  />
                                    &nbsp;<asp:Button ID="btnAddBus0" runat="server" Font-Bold="True" Font-Italic="True"  Text="Update" OnClick="btnAddBus0_Click" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <asp:Panel ID="pnlNoName" runat="server" Height="150px">
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:LinkButton ID="btnSeatMat" runat="server" Font-Underline="False" ForeColor="#FFFF99" style="font-size: x-large; color: #FFFF99; background-color: #669999" OnClick="btnSeatMat_Click">Seat Matrix</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:LinkButton ID="btnHomeCng1" runat="server" Font-Underline="False" ForeColor="#FFFF99" style="font-size: x-large; color: #FFFF99; background-color: #669999">Questions</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:LinkButton ID="btnBusDet" runat="server" Font-Underline="False" ForeColor="#FFFF99" style="font-size: x-large; color: #FFFF99; background-color: #669999" OnClick="btnBusDet_Click" >Bus Details</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:LinkButton ID="LinkButton6" runat="server" >LinkButton</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
