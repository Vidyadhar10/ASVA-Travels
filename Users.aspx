<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            text-align: center;
        }
        .auto-style2
        {
            color: #FFFF00;
        }
        .auto-style3
        {
            text-decoration: none;
        }
        .auto-style4
        {
            color: #FFFF99;
        }
    </style>
</head>
<body style="background-color: #004D71; height: 510px;">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <asp:GridView ID="GridView1" runat="server" Width="801px" align="center" AutoGenerateColumns="False" Height="401px">
            <Columns>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Contact">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("contact") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Password">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("password") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Username">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Details">
                    <ItemTemplate>
                        <a href="HOME.aspx?Usr=<%# Eval("name") %>" class="auto-style3">
                            <strong><em><span class="auto-style4">See Details</span><span class="auto-style2"> </span></em></strong>
                        </a>
                        <%--<asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="False" ForeColor="#FF9900" OnClick="LinkButton1_Click">See Details</asp:LinkButton>--%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="IsAdmin">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("IsAdmin") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
