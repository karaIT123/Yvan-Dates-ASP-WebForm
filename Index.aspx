<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Dates.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img style="max-height:650px"  src="Images/i5.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>First slide label</h5>
        <p>Some representative placeholder content for the first slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img style="max-height:650px" src="Images/i3.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img style="max-height:650px" src="Images/i4.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Some representative placeholder content for the third slide.</p>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    <div class="alert alert-secondary" role="alert">
  Here we will only see users with the opposite gender, for more go on <a class="alert-link" href="Search.aspx">search</a>
</div>

    <div class="container">
        <div class="row">
             <% var item = MyList();
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
