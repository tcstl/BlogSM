<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="BlogSM.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>

    <div class="contact-content">
        <div class="container">
            <div class="contact-info">
                <h2>Свържи си с нас</h2>
                <p>Може да се свържете с нас по всяко време чрез попълване на формуляра отдолу. Ще Ви върнем отговор колкото се може по-бързо. </p>
            </div>
            <div class="contact-details">
                <form runat="server">
                    <asp:TextBox ID="TextBox6" runat="server" placeholder="Име" required="" Font-Italic="True" Width="400px"></asp:TextBox> 
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Фамилия" required="" Font-Italic="True" Width="400px"></asp:TextBox>
                   
                  
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Имейл" required="" Width="400px"></asp:TextBox> 
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Телефон" required="" Width="400px"></asp:TextBox>
                   
                    
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Заглавие" required="" Width="850px"></asp:TextBox>
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="Съобщение" required="" TextMode="MultiLine" Height="100px" Width="850px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Изпрати" OnClick="Button1_Click" />
                </form>

            </div>
            <div class="contact-details">
                <div class="col-md-6 contact-map">
                    <h4>Адрес: </h4>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d513.959843079134!2d27.922404906677187!3d43.222158009805796!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40a4546a38b88a5d%3A0x6c890c928571b295!2z0YPQuy4g4oCe0J3QuNC60L7Qu9CwINCa0L7Qt9C70LXQsuKAnCAzNSwgOTAxMCDQm9C10LLRgdC60LgsINCS0LDRgNC90LA!5e0!3m2!1sbg!2sbg!4v1664370320815!5m2!1sbg!2sbg" width="400" height="300" style="border:0" >

                    </iframe>
                </div>
                <div class="col-md-6 company_address">
                    <h4>За връзка: </h4>
                    <p>ул. „Никола Козлев“ 35</p>
                    <p>България, Варна</p>
                    <p>Телефон: 0989 898 988</p>
                    <p>Имейл: <a href="mailto:info@example.com">blog@gmail.com</a></p>
                    <p>Последвайне ни в: <a href="#">Facebook</a>, <a href="#">Twitter</a></p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    </html>
</asp:Content>
