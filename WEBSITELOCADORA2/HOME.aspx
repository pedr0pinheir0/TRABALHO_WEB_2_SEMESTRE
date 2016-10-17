<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagelocadora.master" AutoEventWireup="true" CodeFile="HOME.aspx.cs" Inherits="HOME" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .filme{
            font-size:xx-large;
            color:black;
        }
    .auto-style16 {
        text-align: center;
        height: 669px;
        margin-top: 0px;
    }
        .auto-style17 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style17">
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p class="auto-style16" style="background-position: -594px; background-color: #FFFFFF; background-image: url('39386244-Realistic-cinema-movie-poster-template-with-film-reel-clapper--Stock-Photo.jpg');">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
            <HeaderTemplate>
                <span class="filme">
                <br>LISTA DE FILMES <br><br><br>
                </span>
            </HeaderTemplate>
            
            <ItemTemplate>
                <%# Eval("titulo") %> -
                <%#Eval("genero") %> - 
                <asp:Button ID="Button1" runat="server" Text="Selecionar" CommandName="Selecionar" />
                <br><br>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LOCADORAConnectionString %>" SelectCommand="SELECT [titulo], [genero], [valor] FROM [Filmes]"></asp:SqlDataSource>
    </p>
    </asp:Content>

