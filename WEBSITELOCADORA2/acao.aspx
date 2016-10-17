<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagelocadora.master" AutoEventWireup="true" CodeFile="acao.aspx.cs" Inherits="acao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            text-align: center;
        height: 701px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style15" style="background-position: 0px 88px; background-image: url('O-HOBBIT-Reprod1.jpg'); background-repeat: no-repeat; background-attachment: scroll;">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
            <HeaderTemplate>
                <span class="filme">
                <br><br><br><br><br>FILMES DE AÇÃO <br><br><br>
                </span>
            </HeaderTemplate>
                <ItemTemplate>
                <%# Eval("titulo") %> -
                <%#Eval("genero") %> - 
                <asp:Button ID="Button1" runat="server" Text="Selecionar" CommandName="Selecionar" />
                <br><br>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LOCADORAConnectionString2 %>" SelectCommand="SELECT [titulo], [genero] FROM [Filmes] WHERE ([genero] = @genero)">
            <SelectParameters>
                <asp:Parameter DefaultValue="ação" Name="genero" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
</p>
    </asp:Content>

