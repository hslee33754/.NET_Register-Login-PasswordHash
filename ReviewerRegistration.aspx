﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReviewerRegistration.aspx.cs" Inherits="ReviewerRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr display="None">
            <td>First Name</td>
            <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="FirstNameRequiredField" runat="server" ErrorMessage="First name required" ControlToValidate="txtFirstName" Display="None"></asp:RequiredFieldValidator>
            </td>
         </tr>
         <tr>
            <td>Last Name</td>
            <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last name required" Display="None"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>Email</td>
            <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="EmailRegularExpression" runat="server" ControlToValidate="txtEmail" Display="None" ErrorMessage="Invalid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr>
            <td>User Name</td>
            <td><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="UserNameRequiredField" runat="server" ControlToValidate="txtUserName" Display="None" ErrorMessage="User name required"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>Password</td>
            <td><asp:TextBox ID="txtPassword" runat="server"  TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="PasswordRequiredField" runat="server" ErrorMessage="Password required" Display="None" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
            </td>
             
        </tr>
         <tr>
            <td>Confirm Password</td>
            <td><asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ConfirmRequiredField" runat="server" ErrorMessage="Password confirm required" ControlToValidate="txtConfirm" Display="None"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="PasswordCompare" runat="server" ErrorMessage="Passwords don't match" ControlToValidate="txtConfirm" ControlToCompare="txtPassword" Display="None"></asp:CompareValidator>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /></td>
            <td>
                <asp:Label ID="lblErrorSuccess" runat="server" Text=""></asp:Label>            
             </td>
        </tr>
       
    </table>
        <asp:LinkButton ID="LbLogin" runat="server" PostBackUrl="~/Default.aspx">Log in</asp:LinkButton>
    </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>