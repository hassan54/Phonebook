<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="PhoneBook.Contacts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PhoneBook</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="The description of my page" />
</head>
<body>
    <form id="ContactInfo" method="post" runat="server">
        <table class="searchLabel" cellspacing="0" cellpadding="0" width="100%" border="0">
            <tr>
                <td colspan="2">
                    <table class="searchLabel" cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td><h2 style=" text-align:center; vertical-align:middle;">CONTACTS</h2>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="right">Search:   
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Find" CssClass="buttonbg" />
                </td>
                <td align="center" width="59%">
                    <asp:Button ID="btnAddNew" runat="server" CssClass="buttonbg" Text="Add Contact" OnClick="btnConfirm_Click"></asp:Button>
                </td>
            </tr>
        </table>
        <table cellspacing="0" cellpadding="0" width="50%" align="center" border="0">
            <tr>
                <td class="titleBg" colspan="4" height="10" width="2%">&nbsp;
                
                
                    </td>
            </tr>
            <tr>
                <td colspan="4">
                    <table cellspacing="20" cellpadding="20" width="200%">
                        <tr>
                            <td width="2%"></td>
                            <td class="titleBg" width="82%">&nbsp;<h3 style="margin-left:auto"> All Contacts</h3></td>
                            <td width="2%"></td>
                        </tr>
                    </table>
                </td>
            </tr>
            
            <tr>
                <td colspan="4">
                    <table cellspacing="1" cellpadding="1" width="94%" align="center" bgcolor="#f6691f" border="0">
                        <tr>
                            <td bgcolor="#ffffff">
                                <table cellspacing="0" cellpadding="0" style="height: 100px; width: 100px; border: 0;">
                                    <tbody>
                                        <tr>
                                            <td valign="top">
                                                <asp:DataGrid ID="dgrdAddressList" runat="server" Width="945px" AllowSorting="True" AutoGenerateColumns="False" DataKeyField="ContactID" CellPadding="2" BorderStyle="None" BorderColor="White" DataSourceID="SqlDataSource1">
                                                    <AlternatingItemStyle BackColor="#FEE3C6"></AlternatingItemStyle>
                                                    <ItemStyle BackColor="#FFFFFF"></ItemStyle>
                                                    <HeaderStyle CssClass="content"></HeaderStyle>
                                                    <Columns>
                                                        <asp:TemplateColumn HeaderText="S.No">
                                                            <HeaderStyle HorizontalAlign="Left" Width="5%" CssClass="contentBold" BackColor="#FF8E4D"></HeaderStyle>
                                                            <ItemStyle HorizontalAlign="Left" CssClass="content"></ItemStyle>
                                                            <ItemTemplate>
                                                                &nbsp;<%# Container.ItemIndex+1 %>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="Name">
                                                            <HeaderStyle HorizontalAlign="Left" Width="17%" CssClass="contentBold" BackColor="#FF8E4D"></HeaderStyle>
                                                            <ItemStyle HorizontalAlign="Left" CssClass="content"></ItemStyle>
                                                            <ItemTemplate>
                                                                <!--<a href="ContactInfo_Detail.aspx?ContactID=<%# DataBinder.Eval(Container.DataItem, "FirstName") %>">-->
                                                                &nbsp;<%# DataBinder.Eval(Container.DataItem, "FirstName") %>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="Address">
                                                            <HeaderStyle HorizontalAlign="Left" Width="17%" CssClass="contentBold" BackColor="#FF8E4D"></HeaderStyle>
                                                            <ItemStyle HorizontalAlign="Left" CssClass="content"></ItemStyle>
                                                            <ItemTemplate>
                                                                &nbsp;<%# DataBinder.Eval(Container.DataItem, "Address") %>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="Phone">
                                                            <HeaderStyle HorizontalAlign="Left" Width="17%" CssClass="contentBold" BackColor="#FF8E4D"></HeaderStyle>
                                                            <ItemStyle HorizontalAlign="Left" CssClass="content"></ItemStyle>
                                                            <ItemTemplate>
                                                                &nbsp;<%# DataBinder.Eval(Container.DataItem, "Mobile") %>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="Type">
                                                            <HeaderStyle HorizontalAlign="Left" Width="17%" CssClass="contentBold" BackColor="#FF8E4D"></HeaderStyle>
                                                            <ItemStyle HorizontalAlign="Left" CssClass="content"></ItemStyle>
                                                            <ItemTemplate>
                                                                &nbsp;<%# DataBinder.Eval(Container.DataItem, "Type") %>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="Email">
                                                            <HeaderStyle HorizontalAlign="Left" Width="17%" CssClass="contentBold" BackColor="#FF8E4D"></HeaderStyle>
                                                            <ItemStyle HorizontalAlign="Left" CssClass="content"></ItemStyle>
                                                            <ItemTemplate>
                                                                &nbsp;<%# DataBinder.Eval(Container.DataItem, "Website") %>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>

                                                        <%--<asp:TemplateColumn HeaderText="Photo">
                                                            <HeaderStyle HorizontalAlign="Left" Width="17%" CssClass="contentBold" BackColor="#FF8E4D"></HeaderStyle>
                                                            <ItemStyle HorizontalAlign="Left" CssClass="content"></ItemStyle>
                                                            <ItemTemplate>
                                                                &nbsp;<%# DataBinder.Eval(Container.DataItem, "Photos") %>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>--%>


                                                        <asp:TemplateColumn HeaderText="Edit">
                                                            <HeaderStyle HorizontalAlign="Left" Width="5%" CssClass="contentBold" BackColor="#FF8E4D"></HeaderStyle>
                                                            <ItemStyle HorizontalAlign="Left" CssClass="content"></ItemStyle>
                                                            <ItemTemplate>
                                                                <a href="btnEdit_Click?ContactId=<%# DataBinder.Eval(Container.DataItem, "ContactID") %>">
                                                                    <asp:Image ImageUrl="images/icon-pencil.gif" runat="server" ID="Image1"></asp:Image></a>

                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="Delete">
                                                            <HeaderStyle HorizontalAlign="Center" Width="5%" CssClass="contentBold" VerticalAlign="Middle" BackColor="#FF8E4D"></HeaderStyle>
                                                            <ItemStyle HorizontalAlign="Center" CssClass="content"></ItemStyle>
                                                            <ItemTemplate>
                                                                <a href="btnEdit_Click?ContactId=<%# DataBinder.Eval(Container.DataItem, "ContactID") %>">
                                                                <asp:ImageButton ID="imgDeleteButton" runat="server" ImageUrl="images/icon-delete.gif" OnCommand="imgDeleteButton_Command"></asp:ImageButton></a>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                    </Columns>
                                                    <PagerStyle HorizontalAlign="Center"></PagerStyle>
                                                </asp:DataGrid>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PhonebookConnectionString %>" SelectCommand="SELECT * FROM [Contacts]"></asp:SqlDataSource>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
