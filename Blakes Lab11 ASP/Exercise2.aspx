<%@ Page Title="" Language="C#" MasterPageFile="~/Exercise1.master" AutoEventWireup="true" CodeFile="Exercise2.aspx.cs" Inherits="Exercise2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            height: 25px;
        }
        .auto-style5 {
            width: 32%;
        }
        .auto-style6 {
            width: 279px;
        }
        .auto-style7 {
            height: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="conArticle1" Runat="Server">
    <table class="auto-style5">
        
        <tr style="background-color:gainsboro;">
            <%--Form Header--%>
            <td style="padding-left:10px" colspan="2" class="auto-style7">Registration Form</td>
            
            
        </tr>
        <tr>
            <%--Form User Name--%>
            <td style="padding-left:10px; vertical-align:top">
                <asp:Label ID="lblUserName" runat="server" Text="Username: "></asp:Label>
                <asp:Label ID="lblUserNameStar" runat="server" Text="*"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtUserName" runat="server" Width="230px"></asp:TextBox>

                <%--Text Username Required Field Validator--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Please enter a username."
                   ControlToValidate="txtUserName" ForeColor="Red" ></asp:RequiredFieldValidator>
            </td>
            
        </tr>

        <tr>
            <%--Form PassWord--%>
            <td style="padding-left:10px; vertical-align:top">

                <asp:Label ID="lblPassWord" runat="server" Text="Password: "></asp:Label>
                <asp:Label ID="lblPassWordStar" runat="server" Text="*"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtPassWord" runat="server" TextMode="Password" Width="230px"></asp:TextBox>

                <%--Text PassWord Required Field Validator--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ErrorMessage="Please enter a password."
                    ControlToValidate="txtPassWord" ForeColor="Red" ></asp:RequiredFieldValidator>
            </td>            
        </tr>

        <tr>
            <%--Form Confirm PassWord--%>
           <td style="padding-left:10px; vertical-align:top"> 
               <asp:Label ID="lblConfirmPassWord" runat="server" Text="Confirm Password: "></asp:Label>

               <asp:Label ID="lblConfirmPassWordStar" runat="server" Text="*"></asp:Label>

            </td>
            <td class="auto-style6"> 
                <asp:TextBox ID="txtConfirmPassWord" TextMode="Password" runat="server" Width="230px"></asp:TextBox>

                <%--Text Confirm PassWord Required Field Validator--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ErrorMessage="Please enter a matching password."
                    ControlToValidate="txtConfirmPassWord" ForeColor="Red">
                </asp:RequiredFieldValidator>

                <%--Text Confirm PassWord & PassWord Compare Validator--%>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToValidate="txtPassWord" 
                            ControlToCompare="txtConfirmPassword" 
                            Operator="Equal" 
                            Type="String" 
                            EnableClientScript="false"
                            ForeColor="Red"
                            ErrorMessage="Password does not match!">
                </asp:CompareValidator>
            </td>
        </tr>

        <tr> <%--Form Email--%>            
            <td style="padding-left:10px; vertical-align:top">
                <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
                <asp:Label ID="lblEmailStar" runat="server" Text="*"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtEmail" runat="server" Width="230px"></asp:TextBox>

                <%--Text Email Required Field Validator--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                     ErrorMessage="Please enter an email address."
                     ControlToValidate="txtEmail" ForeColor="Red">
                </asp:RequiredFieldValidator>

                <%--Text Email Regular Expression Validator--%>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                            runat="server" ForeColor="Red" ControlToValidate="txtEmail"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ErrorMessage="Please enter an email in the format abc@site.com">
                 </asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td>&nbsp;</td>

            <td class="auto-style6"> <%--Form Submit Button--%>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="85px" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="conArticle2" Runat="Server">
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                             DisplayMode="BulletList"
                             EnableClientScript="true"
                             HeaderText="You must enter a value in the following fields:" />
</asp:Content>

