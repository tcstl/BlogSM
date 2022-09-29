<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="BlogSM.Detail" %>

<%--<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>--%>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <!DOCTYPE HTML>
    <html>
    <head>

        <link href="Theme/css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="Theme/css/style.css" rel='stylesheet' type='text/css' />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content=" " />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!----webfonts---->
        <link href='http://fonts.googleapis.com/css?family=Oswald:100,400,300,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,300italic' rel='stylesheet' type='text/css'>
        <!----//webfonts---->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <!--end slider -->
        <!--script-->
        <script type="text/javascript" src="Theme/js/move-top.js"></script>
        <script type="text/javascript" src="Theme/js/easing.js"></script>
        <!--/script-->
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 900);
                });
            });
        </script>
        <!---->

    </head>
    <body>
        <!---header---->
        <div class="header">
        </div>
        <!--/header-->
        <div class="single">
            <div class="container">
                <div class="col-md-8 single-main">
                    <div class="single-grid">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <img src="<%# Eval("Photo")%>" alt="" style="height: 350px; width: 700px; margin-bottom: 20px" />

                                <h3><%#Eval("Title") %></h3>
                                <p><%#Eval("Article") %></p>
                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <ul class="comment-list">
                                <li>
                                    <img src="Theme/images/avatar.png" class="img-responsive" alt="">
                                    <div class="desc">
                                        <p style="font-weight: bolder"><%#Eval("FirstName")%> <%#Eval("Lastname")%> </p> : <p> <%#Eval("Comment1") %></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </li>
                            </ul>
                        </ItemTemplate>
                    </asp:Repeater>

                    <div class="content-form">
                        <h3>Напишете своя коментар:</h3>
                        <form runat="server">
                            <asp:TextBox ID="TextBox4" runat="server" placeholder="Име" required=""></asp:TextBox>
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Фамилия" required=""></asp:TextBox>
                             <asp:TextBox ID="TextBox2" runat="server" placeholder="Имейл " ></asp:TextBox>
                              <asp:TextBox ID="TextBox3" runat="server" placeholder="Коментар" TextMode="MultiLine" Height="100"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Коментирай" OnClick="Button1_Click" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
        
    </html>
</asp:Content>





