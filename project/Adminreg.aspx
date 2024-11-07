<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Adminreg.aspx.cs" Inherits="project.WebForm4" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4"><h2>Admin Register</h2></td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style5">Name</td>
        <td class="auto-style3">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="field can not be empty"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">Address</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="field can not be empty"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">Phone</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter valid Number" ValidationExpression="^[6789]\d{9}$"></asp:RegularExpressionValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">Username</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter user name" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">Password</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8"></td>
        <td class="auto-style9">Confirm Password</td>
        <td class="auto-style10">
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style11">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="password do not match"></asp:CompareValidator>
        </td>
        <td class="auto-style11"></td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">
            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
        </td>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Adminlogin.aspx">Already have an account?</asp:LinkButton>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="Label1" runat="server" Text="label" Visible="False"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style1 {
        height: 26px;
    }
    .auto-style2 {
            width: 216px;
        }
    .auto-style3 {
        height: 26px;
        width: 216px;
    }
    .auto-style4 {
        width: 254px;
    }
    .auto-style5 {
        height: 26px;
        width: 254px;
    }
        .auto-style6 {
            width: 56px;
        }
        .auto-style7 {
            height: 26px;
            width: 56px;
        }
    .auto-style8 {
        width: 56px;
        height: 22px;
    }
    .auto-style9 {
        width: 254px;
        height: 22px;
    }
    .auto-style10 {
        width: 216px;
        height: 22px;
    }
    .auto-style11 {
        height: 22px;
    }
    </style>
</asp:Content>

