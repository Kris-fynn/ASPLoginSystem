    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ASPLoginSystem.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Username:<asp:TextBox ID="TextUsername" runat="server"></asp:TextBox>
            <br />
            <br />
            Password:<asp:TextBox TextMode="Password" ID="TextPassword" runat="server" Height="18px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="MsgLabel" runat="server" Enabled="False" Text="Label" Visible="False"></asp:Label>
            <br />
            <br />
&nbsp;<asp:Button ID="Button1" runat="server" Text="Login" Width="193px" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
