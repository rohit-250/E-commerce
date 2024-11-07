<%@ Page Title="" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="project.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1271px;
        }
        .auto-style2 {
            width: 98px;
        }
        .auto-style3 {
            height: 6px;
        }
        .auto-style4 {
            width: 98px;
            height: 140px;
        }
        .auto-style5 {
            height: 140px;
        }
        .auto-style6 {
            height: 6px;
            width: 70px;
        }
        .auto-style8 {
            width: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="w-100">
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style1">
                                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style1">
                                <table class="w-100">
                                    <tr>
                                        <td>
                                            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="146px" RepeatColumns="2" Width="494px">
                                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                                <ItemTemplate>
                                                    <table class="w-100">
                                                        <tr>
                                                            <td>Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                                                            <td>
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Phone no&nbsp; :</td>
                                                            <td>
                                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; :</td>
                                                            <td>
                                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Address&nbsp;&nbsp;&nbsp; :</td>
                                                            <td>
                                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                                <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                            </asp:DataList>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:DataList ID="DataList2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" RepeatColumns="2">
                                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                                <ItemTemplate>
                                                    <table class="w-100">
                                                        <tr>
                                                            <td class="auto-style2">
                                                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Product_Name") %>'></asp:Label>
                                                            </td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style4">
                                                                <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl='<%# Eval("Product_Image") %>' Width="93px" />
                                                            </td>
                                                            <td class="auto-style5">
                                                                <table class="w-100">
                                                                    <tr>
                                                                        <td class="auto-style6"></td>
                                                                        <td class="auto-style3">
                                                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("Product_Description") %>'></asp:Label>
                                                                        </td>
                                                                        <td class="auto-style3">&nbsp;</td>
                                                                        <td class="auto-style3">&nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="auto-style8">Quantity :</td>
                                                                        <td>
                                                                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                                                                        </td>
                                                                        <td>&nbsp;</td>
                                                                        <td>&nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="auto-style8">Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                                                                        <td>
                                                                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("Total_Price") %>'></asp:Label>
                                                                        </td>
                                                                        <td>&nbsp;</td>
                                                                        <td>&nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="auto-style8">&nbsp;</td>
                                                                        
                                                                        <td>&nbsp;</td>
                                                                        <td>&nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                                <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                            </asp:DataList>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style1">
                                Grand Total :
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                <table class="w-100">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" Text="pay" OnClick="Button1_Click" CssClass="offset-sm-0" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style1">
                                &nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
