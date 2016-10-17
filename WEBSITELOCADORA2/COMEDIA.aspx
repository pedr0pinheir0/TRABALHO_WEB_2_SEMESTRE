<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagelocadora.master" AutoEventWireup="true" CodeFile="COMEDIA.aspx.cs" Inherits="COMEDIA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style15 {
        height: 701px;
            text-align: center;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style15" style="background-position: center center; background-image: url('img_1_1_3454.jpg'); background-repeat: no-repeat;">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LOCADORAConnectionString4 %>" SelectCommand="SELECT [titulo], [genero] FROM [Filmes] WHERE ([genero] = @genero)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Comédia" Name="genero" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
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
</p>
    </asp:Content>

