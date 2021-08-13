<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="contact-section" id="contact">
        <div class="container">
            <h3>Admin <span>Login</span></h3>

            <div class="contact-grid">
                <div class="col-md-12 contactdetails-grid">

                    <h5>Username<span>*</span></h5>
                    <asp:TextBox ID="txtusername" runat="server" required></asp:TextBox><h5>
                        <h5>Passowrd<span>*</span></h5>
                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" required></asp:TextBox>
                          <h5></h5>
                        <asp:Button ID="btnlogin" OnClick="btnlogin_Click" runat="server" Text="Login" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

