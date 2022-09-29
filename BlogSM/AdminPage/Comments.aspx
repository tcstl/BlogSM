<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="BlogSM.AdminPage.Comments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table class="table table-bordered">
        <tr>
            <th>#</th>
            <th>Име</th>
            <th>Фамилия</th>
            <th>Блог</th>
            <th>Коментар</th>
            <th>Изтриване</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ID_comment") %></td>
                    <td><%# Eval("FirstName") %></td>
                    <td><%# Eval("LastName") %></td>
                    <td><%# Eval("Blog.Title") %></td>
                    <td><%# Eval("Comment1") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "CommentDelete.Aspx?ID_comment=" +Eval("ID_comment") %>' CssClass="btn btn-danger">Изтриване</asp:HyperLink></td>
                    
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>

</asp:Content>
