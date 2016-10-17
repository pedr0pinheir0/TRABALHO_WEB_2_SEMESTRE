<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagelocadora.master" AutoEventWireup="true" CodeFile="TERROR.aspx.cs" Inherits="TERROR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style9" style="background-position: center center; background-image: url('281520_Papel-de-Parede-Terror-Mao-em-Forma-de-Madeira_1920x1200-450x2811.jpg'); background-repeat: no-repeat;">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <span class="filme">
                <br><br><br><br><br>FILMES DE COMÉDIA <br><br><br>
                </span>
            </HeaderTemplate>
                <ItemTemplate>
                <%# Eval("titulo") %> -
                <%#Eval("genero") %> - 
                <asp:Button ID="Button1" runat="server" Text="Selecionar" CommandName="Selecionar" />
                <br><br>
            </ItemTemplate>                
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LOCADORAConnectionString7 %>" SelectCommand="SELECT [titulo], [genero] FROM [Filmes] WHERE ([genero] = @genero)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Terror" Name="genero" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
</p>
    </asp:Content>

