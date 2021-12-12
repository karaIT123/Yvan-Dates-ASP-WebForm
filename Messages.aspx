<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="Dates.Messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1>Messagerie</h1>
        <div class="w-50 mx-auto">
             <% var item = MessageList();
                 foreach (var i in item)
                 {
                     if (i.from == Session["id"].ToString())
                     {
                     %>               
                        <p class="text-right"><span class="bg-primary rounded-pill text-white p-2"><%= i.content %></span></p>
                    <%}
                    else
                    {%>
                        <p class=""><span class="bg-light rounded-pill text-dark p-2"><%= i.content%></span></p>
                    <%}
            }%>


            <hr>
            <div class="row">
                <div class="col-9">
                    <asp:TextBox ID="txtContenu" CssClass="form-control w-100" runat="server"></asp:TextBox>
                </div>
                <div class="col-3">
                    <asp:Button ID="btnEnvoyer" runat="server" CssClass="btn btn-primary" Text="Envoyer" OnClick="btnEnvoyer_Click" />
                </div>

            </div>
            
           
        </div>
    </div>
</asp:Content>
