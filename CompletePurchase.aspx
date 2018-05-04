<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CompletePurchase.aspx.cs" Inherits="WebApplication1.Complete_Purchase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="title">
        <p>Purchase Completed</p>
    </div>
     <h2>Your transaction was Completed and Thankyou for purchasing with us!</h2>
    <asp:Button ID="btnConfirmPurchase" runat="server" Text="Confirm" OnClick="btnConfirmPurchase_Click1" />
    <asp:Literal ID="litInformation" runat="server"></asp:Literal>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>

