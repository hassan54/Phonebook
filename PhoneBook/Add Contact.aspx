<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add Contact.aspx.cs" Inherits="PhoneBook.Add_Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Contact</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="AddContact" runat="server">
        <table width="20%">

            <tr>

                <td align="left">
                    <asp:Label ID="Label1" runat="server" Text="First Name" CssClass="Label1"></asp:Label></td>

                <td align="right">
                    <asp:TextBox ID="fname" runat="server"></asp:TextBox></td>


                <td align="left">
                    <asp:Label ID="Label2" runat="server" Text="Last Name" CssClass="Label1"></asp:Label></td>


                <td align="right">
                    <asp:TextBox ID="lname" runat="server"></asp:TextBox></td>

            </tr>


            <tr>
                <td align="left">
                    <asp:Label ID="Label3" runat="server" Text="Email Id" CssClass="Label1"></asp:Label></td>

                <td align="right">
                    <asp:TextBox ID="emailid" runat="server"></asp:TextBox></td>



                <td align="left">
                    <asp:Label ID="Label4" runat="server" Text="Website" CssClass="Label1"></asp:Label></td>

                <td align="right">
                    <asp:TextBox ID="website" runat="server"></asp:TextBox></td>
            </tr>


            <tr>
                <td align="left">
                    <asp:Label ID="Label7" runat="server" Text="Phone" CssClass="Label1"></asp:Label></td>

                <td align="right">
                    <asp:TextBox ID="phone" runat="server"></asp:TextBox></td>

                <td align="left">
                    <asp:Label ID="Label5" runat="server" Text="Type" CssClass="Label1"></asp:Label></td>

                <td align="right">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Text="Mobile" Value="Mobile"></asp:ListItem>
                        <asp:ListItem Text="Home" Value="Home"></asp:ListItem>
                        <asp:ListItem Text="Office" Value="Office"></asp:ListItem>
                        <asp:ListItem Text="Personal" Value="Personal"></asp:ListItem>

                    </asp:DropDownList></td>

            </tr>

            <tr>
                <td align="left">
                    <asp:Label ID="Label6" runat="server" Text="Address" CssClass="Label1"></asp:Label></td>
                <td align="right">
                    <asp:TextBox ID="address" runat="server"></asp:TextBox></td>



            </tr>
        </table>
        <div class="wrapper" style="text-align:center">
            <asp:Button ID="Button1" runat="server" Text="Save" CssClass="Button1" OnClick="Button1_Click" />

        <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="Button1" />

        </div>
        
    </form>
</body>
</html>
