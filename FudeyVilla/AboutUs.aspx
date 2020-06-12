<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .toCaps{
            text-transform:uppercase;
        }
        .auto-style1 {
            width: 50%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:600px;" align="center">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="LabelA_U" runat="server" CssClass="toCaps" BackColor="#F7F6F3" BorderStyle="None" Font-Bold="True" Font-Italic="True" Font-Names="Verdana" Font-Size="1.4em" ForeColor="#7C6F57" Text="About Us"></asp:Label>
                        <hr />
                    </td>
                </tr>
                <tr align="center">
                    <td style="width:50%;">
                        <asp:Image ID="ImageS" runat="server" Width="200px" ImageUrl="~/Images/Siddhesh.jpg" />
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <hr />
                        <asp:Label ID="LabelNameS" runat="server" CssClass="toCaps" BackColor="#F7F6F3" BorderStyle="None" Font-Bold="True" Font-Italic="True" Font-Names="Verdana" Font-Size="1em" ForeColor="#7C6F57" Text="Siddhesh Panchal"></asp:Label>
                    </td>
                    <td></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="LabelE_mailS" runat="server" BackColor="#F7F6F3" BorderStyle="None" Font-Bold="True" Font-Italic="True" Font-Names="Verdana" Font-Size="1em" ForeColor="#7C6F57" Text="sr99panchal@gmail.com"></asp:Label>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="2" align="justify" >
                        <hr />
                        Developed for <b>'Dot Net Technology'</b> subject <b>Project</b> Named: <b>"Online Recipe Portal: Fudey Villa"</b> with <b>ASP.NET</b>
                        using Visual Studio to <b>'Enhance'</b> my skills.
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="ButtonClose" runat="server" BackColor="#F7F6F3" BorderStyle="None" Font-Bold="True" Font-Italic="True" Font-Names="Verdana" Font-Size="18pt" ForeColor="#7C6F57" Text="Close" Width="144px" OnClick="ButtonClose_Click" />
                        <hr />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
