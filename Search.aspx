<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Dates.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        
    </div>

    <div class="container">
        <br />
        <div class="row">
            <div class="col-md-2">
            <asp:Button CssClass="btn btn-outline-primary mb-1 w-100" ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
        </div>
        <div class="col-md-2">
            <asp:TextBox CssClass="form-control" ID="txtAge" runat="server" placeholder="Age"></asp:TextBox>
        </div>
        <div class="col-md-2">
             <asp:DropDownList ID="drpSex" runat="server" CssClass="form-control input-sm w-100">
                <asp:ListItem>Men</asp:ListItem>
                <asp:ListItem>Women</asp:ListItem>
                 <asp:ListItem Selected="True" Value="0">--Select--(Sex)</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-2">
            <asp:DropDownList ID="drpColor" runat="server" CssClass="form-control input-sm w-100">
                <asp:ListItem>Black</asp:ListItem>
                <asp:ListItem>White</asp:ListItem>
                <asp:ListItem>Yellow</asp:ListItem>
                <asp:ListItem Selected="True" Value="0">--Select--(Color)</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-2">
           <asp:DropDownList ID="drpReligion" runat="server" CssClass="form-control input-sm w-100">
                <asp:ListItem>Christian</asp:ListItem>
                <asp:ListItem>Muslim</asp:ListItem>
                <asp:ListItem>Jewish</asp:ListItem>
                <asp:ListItem Selected="True" Value="0">--Select--(Religion)</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-2">
            <asp:DropDownList ID="drpChild" runat="server" CssClass="form-control input-sm w-100">
                <asp:ListItem Value="True">Yes</asp:ListItem>
                <asp:ListItem Value="False">No</asp:ListItem>
                <asp:ListItem Selected="True" Value="0">--Select--(Child)</asp:ListItem>
            </asp:DropDownList>
        </div>
     
             <% var item = MyListSearch();
            foreach (var i in item)
            {%>
                <div class="col-md-3 px-1 mb-1">
                        <div class="card " style="width: 16rem;">
                            <div class="card-body">
                            <h5 class="card-title"><%= i.fname %> <%= i.lname %></h5>
                            <p class="card-text"><%= i.sex %></p>
                            </div>
                            <ul class="list-group list-group-flush center">
                            <li class="list-group-item">Gender: <%= i.sex %></li>
                                <li class="list-group-item">Age: <%= i.age %></li>
                            <li class="list-group-item">Color: <%= i.color %></li>
                            <li class="list-group-item">Religion: <%= i.religion %></li>
                            <li class="list-group-item">Child: <%= i.child %></li>
                            </ul>
                            <div class="card-body center">
                            <a href="Messages.aspx?a=<%= i.id %>" class="btn btn-outline-primary">Send Message</a>
                            </div>
                        </div>
                </div>

            <%} %>
        </div>    
    </div>
</asp:Content>
