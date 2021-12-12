<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Dates.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10">
                <asp:Image ID="Image1" runat="server" Width="100%" CssClass="img-fluid" ImageUrl="~/Images/i1.jpg" />
            </div>
            <div class="col-md-2" style="padding-bottom:40%">
                <div class="mt-">
                    <h2>Login</h2>
                </div>
                <div class="mb-1">
                  <label class="form-label">Email Adress</label>
                  <asp:TextBox ID="txtEA" runat="server" Width="100%" CssClass="form-control input-sm w-100" placeholder="Email Adress"></asp:TextBox>
                </div>
                <div class="mb-1">
                  <label class="form-label">Password</label>
                  <asp:TextBox ID="txtPW" runat="server" Width="100%" CssClass="form-control input-sm w-100" placeholder="Password"></asp:TextBox>
                </div>
                
                <asp:Button ID="Button1" runat="server" Text="Log in" CssClass="btn btn-outline-dark w-100 mt-3" OnClick="Button1_Click" />
                <p>Not account ? <a href="Subscribe.aspx">Subscribe</a></p>
                
            </div>
        </div>
    </div>
</asp:Content>
