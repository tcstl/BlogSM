<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateBlog.aspx.cs" Inherits="BlogSM.AdminPage.UpdateBlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <form runat="server" class="form-group">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Заглавие"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Дата"></asp:TextBox>
         <br />
        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Снимка"></asp:TextBox>
         <br />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataTextField="Type1" DataValueField="ID_type"></asp:DropDownList>
         <br />
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" DataTextField="category1" DataValueField="ID_cetegory"></asp:DropDownList>
        <br />
         <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Съдържание" Height="100px" TextMode="MultiLine"></asp:TextBox>
       <br />
        <asp:Button ID="Button1" runat="server" Text="Запази" CssClass="btn btn-success" OnClick="Button1_Click"  />
    </form>

</asp:Content>
