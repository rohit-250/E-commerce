<%@ Page Title="" Language="C#" MasterPageFile="~/admin3.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="project.admin4" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 184px;
    }
    .auto-style2 {
        height: 184px;
        width: 121px;
    }
    .auto-style3 {
        width: 121px;
    }
    .auto-style4 {
        height: 184px;
        width: 226px;
    }
    .auto-style5 {
            width: 226px;
        }
    .auto-style6 {
        height: 184px;
        width: 243px;
    }
    .auto-style7 {
        width: 243px;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style6">
            &nbsp;</td>
        <td class="auto-style4"></td>
        <td class="auto-style2"></td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style5">
            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Addproduct.aspx">Add Product</asp:LinkButton>
        </td>
        <td class="auto-style3">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style5">
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="Editproduct.aspx"> Edit Product</asp:LinkButton>
        </td>
        <td class="auto-style3">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style5">
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/categoryedz.aspx">Edit Category</asp:LinkButton>
        </td>
        <td class="auto-style3">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style5">
            <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/adminfb.aspx">FeedBack</asp:LinkButton>
        </td>
        <td class="auto-style3">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
