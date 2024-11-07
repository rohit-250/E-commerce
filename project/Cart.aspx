<%@ Page Title="" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="project.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 182px;
    }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 821px;
        }
        .auto-style4 {
            height: 26px;
            width: 821px;
        }
        .auto-style5 {
            height: 182px;
            width: 821px;
        }
        .auto-style6 {
            width: 462px;
        }
        .auto-style7 {
            width: 164px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2"></td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:GridView ID="GridView1" runat="server" Width="815px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" DataKeyNames="Cart_Id">
                <Columns>
                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                    <asp:CommandField HeaderText="select" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
        </td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style3">
            <table class="w-100">
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/displayproduct.aspx">Go Back</asp:HyperLink>
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="View Order" />
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" />
                    </td>
                </tr>
            </table>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
