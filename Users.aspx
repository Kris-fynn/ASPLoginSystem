<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="ASPLoginSystem.Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
        <form id="form1" runat="server">
    
        <div style="align-content:center">
            <h1>User's Details</h1>
            <br /><p>Logged in as: 
                <asp:Label ID="lblUsername" runat="server"></asp:Label>
            </p>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            

        </div>
    
            <p>
                &nbsp;</p>
            <p>
                <asp:Button ID="btnAddUsers" runat="server" Text="Add users" Width="145px" Enabled="False" OnClick="btnAddUsers_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnEdit" runat="server" Text="Edit User" Enabled="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDelete" runat="server" Text="Delete User" Enabled="False" OnClick="btnDelete_Click" />
                </p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelDropdown" runat="server" Text="User to delete:" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownListUsers" runat="server" style="height: 22px" Visible="False">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="DELETE" Visible="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</p>


            <p>
                <asp:Label ID="lblNewName" runat="server" Text="username:" Visible="False"></asp:Label>
&nbsp;
                <asp:TextBox ID="txtNewName" runat="server" Height="16px" Width="147px" Visible="False"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="lblPassword" runat="server" Text="Password:" Visible="False"></asp:Label>
                <asp:TextBox ID="txtNewPass" runat="server" Visible="False"></asp:TextBox>
            </p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Label ID="Label2" runat="server" Text="User role:" Visible="False"></asp:Label>
            </p>
            <p>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Visible="False">
                    <asp:ListItem>Administrator</asp:ListItem>
                    <asp:ListItem>Manager</asp:ListItem>
                    <asp:ListItem>FrontDesk</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnAdd" runat="server" Text="Add User" OnClick="btnAdd_Click" Visible="False" />
            </p>
            
        </form>
    
</body>
</html>
