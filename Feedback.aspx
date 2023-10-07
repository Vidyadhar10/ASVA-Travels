<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 83%;
            height: 742px;
        }
        .auto-style2 {
            text-align: center;
            font-size: x-large;
            text-decoration: underline;
            height: 100px;
        }
        .auto-style3 {}
        .auto-style4 {
            height: 58px;
        }
        .auto-style5 {
            height: 60px;
        }
        .auto-style6 {
            height: 70px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style2">Give Us Feedback!</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblQ1" runat="server" Text="1.Is the Registration process streamlined and easy-to-use?"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBYes" runat="server" GroupName="Q1" Text="Yes" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBNo" runat="server" GroupName="Q1" Text="No" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblQ2" runat="server" Text="2. Did you wait for the bus for so long?"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBYes1" runat="server" GroupName="Q2" Text="Yes" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBNo1" runat="server" GroupName="Q2" Text="No" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblQ3" runat="server" Text="3.Please give us feedback about Bus Driver: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                    <br />
                    <asp:Label ID="lblQ3a" runat="server" Text="a) Was the driver Over-Speeding?"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBYes2" runat="server" GroupName="Q3 a" Text="Yes" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBNo2" runat="server" GroupName="Q3 a" Text="No" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblQ3b" runat="server" Text="b)Was the driver driving recklessly?"></asp:Label>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBYes3" runat="server" GroupName="Q3 b" Text="Yes" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBNo3" runat="server" GroupName="Q3 b" Text="No" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="lblQ3c" runat="server" Text="c)Was the driver Competing with other buses?"></asp:Label>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBYes4" runat="server" GroupName="Q3 c" Text="Yes" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBNo4" runat="server" GroupName="Q3 c" Text="No" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblQ4" runat="server" Text="4.Rate the interior cleanliness of bus."></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBVG" runat="server" GroupName="Q4" Text="Very Good" />
&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBG" runat="server" GroupName="Q4" Text="Good" />
&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBAvg" runat="server" GroupName="Q4" Text="Average" />
&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBPoor" runat="server" GroupName="Q4" Text="Poor" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblQ5" runat="server" Text="5.Were the interiors of the bus well lit?"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;
                    <asp:RadioButton ID="RBYes5" runat="server" GroupName="Q5" Text="Yes" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBNo5" runat="server" GroupName="Q5" Text="No" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblQ6" runat="server" Text="6.Did you feel safe inside the bus?"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;
                    <asp:RadioButton ID="RBYes6" runat="server" GroupName="Q6" Text="Yes" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBNo6" runat="server" GroupName="Q6" Text="No" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblQ7" runat="server" Text="7.Is this bus service reliable?"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;
                    <asp:RadioButton ID="RBYes7" runat="server" GroupName="Q7" Text="Yes" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBNo7" runat="server" GroupName="Q7" Text="No" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label10" runat="server"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblQ8" runat="server" Text="8.Taking everything into account about your entire journey from the start to the end ,please rate your Experience."></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBExce" runat="server" GroupName="Q8" Text="Excellent" />
&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBVG1" runat="server" GroupName="Q8" Text="Very Good" />
&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBG1" runat="server" GroupName="Q8" Text="Good" />
&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBAvg1" runat="server" GroupName="Q8" Text="Average" />
&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBPoor1" runat="server" GroupName="Q8" Text="Poor" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label11" runat="server"></asp:Label>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblQ9" runat="server" Text="9.Will you recommend this bus service to others?"></asp:Label>
                    <br />
                    &nbsp;&nbsp;
                    <asp:RadioButton ID="RBYes8" runat="server" GroupName="Q9" Text="Yes" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RBNo8" runat="server" GroupName="Q9" Text="No" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label12" runat="server"></asp:Label>

                    
                  
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblsug" runat="server" Text="We value your Feedback and would like to get suggestions from you to improve our service,Please Give Us Suggestions :"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Height="40px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnF" runat="server" Height="35px" OnClick="BtnF_Click" Text="Submit" Width="120px" />
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
