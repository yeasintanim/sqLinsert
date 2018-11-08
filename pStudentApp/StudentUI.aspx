<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentUI.aspx.cs" Inherits="pStudentApp.StudentUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <table>           
            <tr>              
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>

                    <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>

                </td>
            </tr>
        </table>
    
        <table>           
            <tr>              
                <td>
                    <asp:Label ID="Label2" runat="server" Text="RegNo"></asp:Label>

                    <asp:TextBox ID="regTextBox" runat="server"></asp:TextBox>

                </td>
            </tr>
        </table>
        
        <table>           
            <tr>              
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>

                    <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>

                </td>
            </tr>
        </table>
        
        <table>           
            <tr>              
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>

                    <asp:TextBox ID="addTextBox" runat="server"></asp:TextBox>

                </td>
            </tr>
        </table>
        
        <table>           
            <tr>              
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Department"></asp:Label>

                    <asp:TextBox ID="deptTextBox" runat="server"></asp:TextBox>

                </td>
            </tr>
        </table>
        
        <table>           
            <tr>              
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        
    </div>
        &nbsp;
        <asp:Button ID="saveButton" runat="server" OnClick="saveButton_Click" Text="SAve" />
&nbsp;
        <asp:Label ID="outputLabel" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
