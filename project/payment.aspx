<%@ Page Title="" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="project.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        height: 36px;
    }
    .auto-style3 {
        height: 32px;
    }
    .auto-style4 {
        height: 37px;
    }
    .auto-style5 {
        width: 252px;
    }
    .auto-style6 {
        height: 36px;
        width: 252px;
    }
    .auto-style7 {
        height: 37px;
        width: 252px;
    }
    .auto-style8 {
        height: 32px;
        width: 252px;
    }
    .auto-style12 {
        height: 61px;
        width: 252px;
    }
    .auto-style13 {
        height: 61px;
    }
    .auto-style14 {
        height: 51px;
    }
    .auto-style15 {
        height: 35px;
    }
    .auto-style16 {
        height: 51px;
        width: 253px;
    }
    .auto-style17 {
        height: 35px;
        width: 253px;
    }
    .auto-style18 {
        width: 177px;
    }
    .auto-style19 {
        height: 30px;
    }
    .auto-style20 {
        height: 15px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style19"></td>
        <td class="auto-style19">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </td>
        <td class="auto-style19"></td>
    </tr>
    <tr>
        <td class="auto-style19">&nbsp;</td>
        <td class="auto-style19">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table class="w-100">
                        <tr>
                            <td>
                                <asp:Panel ID="Panel1" runat="server" Visible="False">
                                    <table class="w-100">
                                        <tr>
                                            <td class="auto-style5">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6">Account No</td>
                                            <td class="auto-style2">
                                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style7">Account Type</td>
                                            <td class="auto-style4">
                                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8">Account Balance</td>
                                            <td class="auto-style3">
                                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style12"></td>
                                            <td class="auto-style13">
                                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;</td>
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
                        <tr>
                            <td>
                                <asp:Panel ID="Panel2" runat="server" Visible="False">
                                    <table class="w-100">
                                        <tr>
                                            <td class="auto-style16">Enter account number</td>
                                            <td class="auto-style14">
                                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style17"></td>
                                            <td class="auto-style15">
                                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style17">
                                                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                            </td>
                                            <td class="auto-style15">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td class="auto-style19">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style20"></td>
        <td class="auto-style20">
        </td>
        <td class="auto-style20"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <table class="w-100">
                <tr>
                    <td class="auto-style18">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Add New Bank" />
                    </td>
                    <td>
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Already have" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
