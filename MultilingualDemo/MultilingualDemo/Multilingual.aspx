<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Multilingual.aspx.cs" Inherits="MultilingualDemo.Multilingual" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            
        <div>
            <center>
                 <table>
            <tr>
                <td colspan="2">
                    <h2>Multilingual Demo</h2>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="right">
                    <asp:DropDownList ID="ddlLang" runat="server" AutoPostBack="True" meta:resourcekey="ddlLangResource1" OnSelectedIndexChanged="ddlLang_SelectedIndexChanged">
                        <asp:ListItem Text="English" Value="en-US" meta:resourcekey="ListItemResource1"></asp:ListItem>
                        <asp:ListItem Text="français" Value="fr-FR" meta:resourcekey="ListItemResource2"></asp:ListItem>
                        <asp:ListItem Text="español" Value="es-ES"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblName" runat="server" Text="Name" meta:resourcekey="lblNameResource1"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" meta:resourcekey="txtNameResource1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblEmail" runat="server" Text="Email" meta:resourcekey="lblEmailResource1"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" meta:resourcekey="txtEmailResource1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPhone" runat="server" Text="Phone" meta:resourcekey="lblPhoneResource1"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server" meta:resourcekey="txtPhoneResource1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" meta:resourcekey="btnSubmitResource1" />
                    <asp:Button ID="btnReset" runat="server" Text="Reset" meta:resourcekey="btnResetResource1" />
                </td>
            </tr>
        </table>
            </center>
        </div>

        </ContentTemplate>
    </asp:UpdatePanel>
     </form>
</body>
</html>
