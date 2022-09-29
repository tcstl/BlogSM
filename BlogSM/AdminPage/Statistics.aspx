<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Statistics.aspx.cs" Inherits="BlogSM.AdminPage.Statistics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table class="table table-bordered">
        <tr>
            <td>
              Брой блогове  :<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
            <td>
                Брой коментари:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
            <td>
                Анимета:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
        </tr>
         <tr> 
             <td>
                Сериали:<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
            <td>
               Филми:<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
           
            <td>
                Най-коментиран блог/пост:<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
        </tr>
    </table>

</asp:Content>
