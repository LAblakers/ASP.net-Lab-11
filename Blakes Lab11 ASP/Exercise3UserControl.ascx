<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Exercise3UserControl.ascx.cs" Inherits="Exercise3UserControl" %>

<style type="text/css">
    .auto-style2 {
        width: 31%;
        height: 139px;
        margin-top: 0px;
    }
    .auto-style3 {
        height: 41px;
        width: 414px;
    }
    .auto-style8 {
        width: 160px;
        height: 10px;
    }
    .auto-style9 {
        height: 10px;
        width: 220px;
    }
</style>


<b><%=Caption%></b>
<table style="border:2px solid black; background-color:gainsboro" class="auto-style2">
    <tr>
        <td style="padding-left:12px;" class="auto-style8">
            <strong>
            <asp:Label ID="lblLogin" runat="server" Text="Login: "></asp:Label>
            </strong>
        </td>
        <td class="auto-style9">
            <asp:TextBox ID="txtLogin" runat="server" Width="220px"></asp:TextBox>
        </td>
        
    </tr>
    <tr>
        <td style="padding-left:12px" class="auto-style8">
            <strong>
            <asp:Label ID="lblPassWord" runat="server" Text="Password: "></asp:Label>
            </strong>
        </td>
        <td class="auto-style9">
            <asp:TextBox ID="txtPassWord" TextMode="Password" runat="server" Width="220px"></asp:TextBox>
        </td>
        
    </tr>
    <tr>
        <td class="auto-style8"></td>
        <td class="auto-style9">
            
            
            
        </td>
        
    </tr>
</table>









