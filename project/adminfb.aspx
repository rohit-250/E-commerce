<%@ Page Title="" Language="C#" MasterPageFile="~/admin3.Master" AutoEventWireup="true" CodeBehind="adminfb.aspx.cs" Inherits="project.adminfb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 39px;
        }
        .auto-style2 {
            height: 35px;
        }
        .auto-style3 {
            height: 35px;
            width: 342px;
        }
        .auto-style4 {
            height: 39px;
            width: 342px;
        }
        .auto-style5 {
            width: 342px;
        }
        .auto-style6 {
            height: 40px;
            width: 342px;
        }
        .auto-style7 {
            height: 40px;
        }
        .auto-style8 {
            height: 38px;
            width: 342px;
        }
        .auto-style9 {
            height: 38px;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style12 {
            height: 35px;
            width: 61px;
        }
        .auto-style13 {
            height: 39px;
            width: 61px;
        }
        .auto-style14 {
            height: 40px;
            width: 61px;
        }
        .auto-style15 {
            height: 38px;
            width: 61px;
        }
        .auto-style16 {
            width: 61px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="User_Id">
                    <Columns>
                        <asp:TemplateField HeaderText="Replay">
                            <ItemTemplate>
                                <table class="w-100">
                                    <tr>
                                        <td>
                                            <table class="w-100">
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style11">
                                                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("User_Id") %>' OnCommand="LinkButton2_Command">Select</asp:LinkButton>
                                                    </td>
                                                    <td class="auto-style11"></td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <table class="w-100">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style12">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                            <td class="auto-style2">
                                &nbsp;</td>
                            <td class="auto-style2"></td>
                        </tr>
                        <tr>
                            <td class="auto-style13">&nbsp;</td>
                            <td class="auto-style4">Admin Name</td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style1"></td>
                        </tr>
                        <tr>
                            <td class="auto-style14">&nbsp;</td>
                            <td class="auto-style6">Admin mail Id</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style7"></td>
                        </tr>
                        <tr>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style8">Username</td>
                            <td class="auto-style9">
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style9"></td>
                        </tr>
                        <tr>
                            <td class="auto-style14">&nbsp;</td>
                            <td class="auto-style6">User Mail</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style7"></td>
                        </tr>
                        <tr>
                            <td class="auto-style13">&nbsp;</td>
                            <td class="auto-style4">Subject </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style1"></td>
                        </tr>
                        <tr>
                            <td class="auto-style14">&nbsp;</td>
                            <td class="auto-style6">Body</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style7"></td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" Width="102px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
