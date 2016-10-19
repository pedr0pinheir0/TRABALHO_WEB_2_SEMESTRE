<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagelocadora.master" AutoEventWireup="true" CodeFile="editar.aspx.cs" Inherits="editar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            height: 695px;
            text-align: center;
        }
        .auto-style16 {
            height: 19px;
        }
        .auto-style17 {
            width: 100%;
            height: 388px;
        }
        .auto-style18 {
            height: 51px;
        }
        .auto-style19 {
            height: 43px;
        }
        .auto-style20 {
            height: 43px;
            width: 79px;
        }
        .auto-style21 {
            height: 43px;
            width: 58px;
        }
        .auto-style22 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style15">
        <div class="auto-style22">
            <strong><em>Você esta logado como:</em></strong>
        <asp:Label ID="lbleditar" runat="server"></asp:Label>
        <br />
        </div>
        <table cellpadding="0" cellspacing="0" class="auto-style17">
            <tr>
                <td colspan="6">
        <asp:GridView ID="grvFilmes" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" HorizontalAlign="Center" AllowPaging="True" OnPageIndexChanging="grvFilmes_PageIndexChanging" OnRowCommand="grvFilmes_RowCommand" PageSize="6" Width="458px">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" />
                <asp:BoundField DataField="titulo" HeaderText="Titulo" />
                <asp:BoundField DataField="genero" HeaderText="Genero" />
                <asp:BoundField DataField="quantidade" HeaderText="Quantidade" DataFormatString="{0:N2}" />
                <asp:BoundField DataField="valor" HeaderText="Valor" DataFormatString="{0:C2}" />
                <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Selecionar" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style16" colspan="2">ID:</td>
                <td class="auto-style16" colspan="2">
                    <asp:Label ID="lblid" runat="server" Width="127px"></asp:Label>
                </td>
                <td class="auto-style16" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">TITULO:</td>
                <td colspan="2">
                    <asp:TextBox ID="txttitulo" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">GENERO:</td>
                <td colspan="2">
                    <asp:TextBox ID="txtgenero" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">QUANTIDADE:</td>
                <td colspan="2">
                    <asp:TextBox ID="txtquantidade" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">VALOR:</td>
                <td colspan="2">
                    <asp:TextBox ID="txtvalor" runat="server" style="height: 22px"></asp:TextBox>
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18" colspan="6"></td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <strong>
                    <asp:Button ID="btninserir" runat="server" Text="Inserir" OnClick="btninserir_Click" CssClass="btn-info disabled focus" style="font-weight: bold" />
                    </strong>
                </td>
                <td class="auto-style19">
                    <strong>
                    <asp:Button ID="btneditar" runat="server" Text="Editar" OnClick="btneditar_Click" CssClass="btn-success active" style="font-weight: bold" />
                    </strong>
                </td>
                <td class="auto-style20">
                    <strong>
                    <asp:Button ID="btnremover" runat="server" Text="Remover" OnClick="btnremover_Click" CssClass="btn-danger active" style="font-weight: bold" />
                    </strong>
                </td>
                <td class="auto-style21">
                    <strong>
                    <asp:Button ID="btngravar" runat="server" Text="Gravar" OnClick="btngravar_Click" CssClass="btn-warning disabled active" style="font-weight: bold" />
                    </strong>
                </td>
                <td class="auto-style19">
                    <strong>
                    <asp:Button ID="btncancelar" runat="server" Text="Cancelar" OnClick="btncancelar_Click" CssClass="btn-danger active" style="font-weight: bold" />
                    </strong>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>

