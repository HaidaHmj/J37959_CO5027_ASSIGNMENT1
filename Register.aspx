<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.Register2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSS/Register.css" type="text/css" />
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="title">
        <p>Register</p>
    </div>
    <br />
    <div id="container">
        <div id="wrapper">

        <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="regExprCheckkEmail" runat="server" ControlToValidate="txtRegEmail" ErrorMessage="e.g. someone@example.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)" class="validation" ValidationGroup="validatedControls"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="regEmail" runat="server" ControlToValidate="txtRegEmail" Display="None" ErrorMessage="please fill in email"></asp:RequiredFieldValidator>
        
        

        <br />
        <br />
        
        

    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="Button1_Click" />
        
        
        <asp:Literal ID="LiteralErrorMsg" runat="server"></asp:Literal>

        </div>
       </div> 
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
