<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.Master" AutoEventWireup="true" CodeBehind="CategoryDetail.aspx.cs" Inherits="BlogSM.CategoryDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="content-grids">
            <div class="col-md-8 content-main">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="content-grid">
                            <div class="content-grid-info">
                                <img src="<%# Eval("Photo")%>" alt="" style="height: 300px; width: 600px" />
                                <div class="post-info">
                                    <h4><a href="Detail.Aspx?ID_blog=<%# Eval("ID_blog")%>"><%# Eval("Title") %></a>  <%# Eval("Date")%></h4>
                                    <p><%# Eval("Article")%></p>
                                    <a href="Detail.Aspx?ID_blog=<%# Eval("ID_blog")%>"><span></span>Прочети</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

             <div class="col-md-4 content-right">
                <div class="recent">
                    <h3>Блогове за:</h3>
                    <ul>
                        <asp:Repeater ID="Repeater3" runat="server">
                            <ItemTemplate>
                                <li><a  href="TypeDetail.Aspx?ID_type=<%# Eval("ID_type")%>"> <%#Eval("Type1")%></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
               
                <div class="clearfix"></div>               
                <div class="categories">
                    <h3>Категории:</h3>
                    <ul>
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <li><a href="CategoryDetail.Aspx?ID_cetegory=<%# Eval("ID_cetegory")%>"><%# Eval("category1") %></a> </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

</asp:Content>
