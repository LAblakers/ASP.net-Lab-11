<%@ Page Title="" Language="C#" MasterPageFile="~/Exercise1.master" AutoEventWireup="true" CodeFile="Exercise3.aspx.cs" Inherits="Exercise3" %>

<%@ Register Src="~/Exercise3UserControl.ascx" TagPrefix="uc1" TagName="Exercise3UserControl" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="conArticle1" Runat="Server">
    <uc1:Exercise3UserControl runat="server" id="Exercise3UserControl1" Caption="<strong>A Login User Control</strong>" Login="" Password="" />
    <br />
    <asp:Button ID="btnSubmit" runat="server" OnClick="SubmitBtn_Click" Text="Submit" />
    <br />
    <asp:Label ID="lblLoginSummary" runat="server" Text=""></asp:Label>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="conArticle1Detials" Runat="Server">
    
</asp:Content>
    
