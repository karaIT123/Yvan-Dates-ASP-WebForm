<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Subscribe.aspx.cs" Inherits="Dates.Subscribe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10">
                <asp:Image ID="Image1" runat="server" Width="100%" CssClass="img-fluid" ImageUrl="~/Images/i1.jpg" />
            </div>
            <div class="col-md-2" style="padding-bottom:40%">
                <div class="mt-">
                    <h2>Subscribe</h2>
                </div>
                <div class="mb-1">
                  <label class="form-label">First Name</label>
                  <asp:TextBox ID="txtFname" runat="server" Width="100%" CssClass="form-control input-sm w-100" placeholder="First Name"></asp:TextBox>
                </div>
                <div class="mb-1">
                  <label class="form-label">Last Name</label>
                  <asp:TextBox ID="txtLname" runat="server" Width="100%" CssClass="form-control input-sm w-100" placeholder="Last Name"></asp:TextBox>
                </div>
                <div class="mb-1">
                  <label class="form-label">Email Adress</label>
                  <asp:TextBox ID="txtEA" runat="server" Width="100%" CssClass="form-control input-sm w-100" placeholder="Email Adress"></asp:TextBox>
                </div>
                <div class="mb-1">
                  <label class="form-label">Password</label>
                  <asp:TextBox ID="txtPW" runat="server" Width="100%" CssClass="form-control input-sm w-100" placeholder="Password"></asp:TextBox>
                </div>
                <div class="mb-1">
                  <label class="form-label">Age</label>
                  <asp:TextBox ID="txtAge" runat="server" Width="100%" CssClass="form-control input-sm w-100" placeholder="Age"></asp:TextBox>
                </div>
                <div class="mb-1">
                  <label class="form-label">Sex</label>
                    <asp:DropDownList ID="drpSex" runat="server" CssClass="form-control input-sm w-100">
                        <asp:ListItem>Men</asp:ListItem>
                        <asp:ListItem>Women</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="mb-1">
                  <label class="form-label">Color</label>
                    <asp:DropDownList ID="drpColor" runat="server" CssClass="form-control input-sm w-100">
                        <asp:ListItem>Black</asp:ListItem>
                        <asp:ListItem>White</asp:ListItem>
                        <asp:ListItem>Yellow</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="mb-1">
                  <label class="form-label">Religion</label>
                    <asp:DropDownList ID="drpReligion" runat="server" CssClass="form-control input-sm w-100">
                        <asp:ListItem>Christian</asp:ListItem>
                        <asp:ListItem>Muslim</asp:ListItem>
                        <asp:ListItem>Jewish</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="mb-1">
                  <label class="form-label">Child</label>
                    <asp:DropDownList ID="drpChild" runat="server" CssClass="form-control input-sm w-100">
                        <asp:ListItem Value="True">Yes</asp:ListItem>
                        <asp:ListItem Value="False">No</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <asp:Button ID="Button1" runat="server" Text="Subscribe" CssClass="btn btn-outline-dark w-100 mt-3" OnClick="Button1_Click" />
                <p>Have account ? <a href="Login.aspx" class="">Sign in</a></p>
                
            </div>
        </div>
    </div>
</asp:Content>
