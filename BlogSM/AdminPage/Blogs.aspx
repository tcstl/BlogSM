<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Blogs.aspx.cs" Inherits="BlogSM.AdminPage.Blogs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table class="table table-bordered">
        <tr>
            <th>#</th>
            <th>Заглавие</th>
            <th>Дата</th>
            <th>Тип</th>
            <th>Категория</th>
            <th>Изтриване</th>
            <th>Актуализиране</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ID_blog") %></td>
                    <td><%# Eval("Title") %></td>
                    <td><%# Eval("Date") %></td>
                    <td><%# Eval("Category.category1") %></td>
                    <td><%# Eval("Type.Type1") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "BlogDelete.Aspx?ID_blog=" +Eval("ID_blog") %>' CssClass="btn btn-danger">Изтриване</asp:HyperLink></td>
                    <td>
                         <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "UpdateBlog.Aspx?ID_blog=" +Eval("ID_blog") %>' CssClass="btn btn-warning">Актуализиране</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="AddBlog.Aspx" class="btn btn-primary">Добави</a>

</asp:Content>
