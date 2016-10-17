<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LOGIN.aspx.cs" Inherits="LOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1" style="background-color: #33CCCC">
    
        <br />
        LOGIN:<asp:TextBox ID="txtlogin" runat="server" Width="186px"></asp:TextBox>
        <br />
        SENHA:<asp:TextBox ID="txtsenha" runat="server" Width="185px" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtlogin" ControlToValidate="txtsenha" ErrorMessage="Login e senha não podem ser iguais" Font-Italic="True" Font-Size="X-Large" ForeColor="Red" Operator="NotEqual"></asp:CompareValidator>
        <br />
        CONFIRMA:<asp:TextBox ID="txtconfirma" runat="server" Width="154px" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtconfirma" Display="Dynamic" ErrorMessage="Campo Confirma é Obrigatório" Font-Bold="True" Font-Size="Large" ForeColor="Red">Informe os Dados do Campo Confirma</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtsenha" ControlToValidate="txtconfirma" Display="Dynamic" ErrorMessage="Confirma e senha devem ser iguais"></asp:CompareValidator>
        <br />
        <br />
        <asp:Button ID="btnok" runat="server" OnClick="btnok_Click" Text="OK" Width="75px" />
        <br />
    
    </div>
    </form>
</body>
</html>
