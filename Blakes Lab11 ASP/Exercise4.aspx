<%@ Page Title="" Language="C#" MasterPageFile="~/Exercise1.master" AutoEventWireup="true" CodeFile="Exercise4.aspx.cs" Inherits="Exercise4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

    

<asp:Content ID="Content2" ContentPlaceHolderID="conArticle1" Runat="Server">
    <br />
    <h2>GridView</h2>

    <%--GridView For Books.xml--%>
    <asp:GridView ID="gridBooks" runat="server" AutoGenerateColumns="False"
                OnPageIndexChanging="OnPaging" PageSize="5" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" >
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField HeaderText="Book ID" DataField="bookid" SortExpression="bookid"></asp:BoundField>
            <asp:BoundField HeaderText="Author" DataField="author" SortExpression="author"></asp:BoundField>
            <asp:BoundField HeaderText="Title" DataField="title" SortExpression="title"></asp:BoundField>
            <asp:BoundField HeaderText="Genre" DataField="genre" SortExpression="genre"></asp:BoundField>
            <asp:BoundField HeaderText="Price" DataField="price" SortExpression="price"></asp:BoundField>
            <asp:BoundField HeaderText="Publish Date" DataField="publish_date" SortExpression="publish_date"></asp:BoundField>
            <asp:BoundField HeaderText="Description" DataField="description" SortExpression="description"></asp:BoundField>
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="conArticle1Detials" runat="server">
    <br /><br />
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="conArticle2" Runat="Server">
    <h2>Repeater</h2>

    <%--Repeater View For Books.xml--%>
    <asp:Repeater ID="repeaterBooks" runat="server">
        <HeaderTemplate>
            <table style="width: 100%"; border="1">
                <tr>
                    <th>bookid</th>
                    <th>author</th>
                    <th>title</th>
                    <th>genre</th>
                    <th>price</th>
                    <th>publish_date</th>
                    <th>description</th>
         </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><asp:Label ID="bookid" runat="server" Text='<%# Eval("bookid") %>' /></td>
                        <td><asp:Label ID="author" runat="server" Text='<%# Eval("author") %>' /></td>
                        <td><asp:Label ID="title" runat="server" Text='<%# Eval("title") %>' /></td>
                        <td><asp:Label ID="genre" runat="server" Text='<%# Eval("genre") %>' /></td>
                        <td><asp:Label ID="price" runat="server" Text='<%# Eval("price") %>' /></td>
                        <td><asp:Label ID="publish_date" runat="server" Text='<%# Eval("publish_date") %>' /></td>
                        <td><asp:Label ID="description" runat="server" Text='<%# Eval("description") %>' /></td>
                    </tr>
                </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>        
    </asp:Repeater>
</asp:Content>

