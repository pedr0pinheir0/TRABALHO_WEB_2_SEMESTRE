<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagelocadora.master" AutoEventWireup="true" CodeFile="KIDS.aspx.cs" Inherits="KIDS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            text-align: center;
        height: 699px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style15" style="background-image: url('smurfs-2.jpg'); background-repeat: no-repeat;">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LOCADORAConnectionString6 %>" SelectCommand="SELECT [titulo], [genero] FROM [Filmes] WHERE ([genero] = @genero)">
            <SelectParameters>
                <asp:Parameter DefaultValue="kids" Name="genero" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
</p>
    </asp:Content>

