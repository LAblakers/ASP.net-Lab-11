<%@ Page Title="" Language="C#" MasterPageFile="~/Exercise1.master" AutoEventWireup="true" CodeFile="Exercise5.aspx.cs" Inherits="Exercise5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 804px;
            height: 79px;
        }
        .auto-style7 {
            height: 140px;
        }
        .auto-style10 {
            margin-left: 0px;
            margin-top: 5px;
        }
        .auto-style11 {
            width: 24%;
            height: 161px;
            margin-bottom: 2px;
        }
        .auto-style12 {
            margin-left: 3px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="conSectionTitle" Runat="Server">
    <p>Enter two whole numbers and then click <strong>ADD.</strong></p>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="conArticle1Detials" Runat="Server">

    <%--Ajax Script Manager--%>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <table style="border:4px solid black" class="auto-style11">
        <tr>
            <td style="padding-left:25px; vertical-align:bottom; " class="auto-style5">
                <asp:Label ID="lblFirstNumber" runat="server" Text="First Number:"></asp:Label>
                <br />
                <asp:TextBox ID="txtFirstNumber" runat="server" Height="24px" Width="160px" CssClass="auto-style10"></asp:TextBox>                
            </td>            
        </tr>       

        <tr> 
            
            <td style="vertical-align:central; padding-left:25px;" class="auto-style7">
                <asp:Label ID="lblSecondNumber" runat="server" Height="20px" Width="150px" Text="Second Number:"></asp:Label>
                <br />
                <asp:TextBox ID="txtSecondNumber" runat="server" Height="24px" Width="160px" CssClass="auto-style10"></asp:TextBox>
                <br /><br />

                <%--Ajax Add Button Code--%>
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" style="vertical-align:middle; margin-top: 0px" Width="77px" CssClass="auto-style12" />
                    </ContentTemplate>
                 </asp:UpdatePanel>
            </td>
        </tr>
        
        
    </table>

   <%--Ajax Code for Label Total = --%>
        <br />
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
         <ContentTemplate>
           <asp:Label ID="lblTotalResult" runat="server" Text="Total = " ></asp:Label>
         </ContentTemplate>
        </asp:UpdatePanel>
    
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="conArticle2" Runat="Server">
    

    
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="conArticle2Detials" Runat="Server">
</asp:Content>

