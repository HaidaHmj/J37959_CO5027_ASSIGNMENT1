<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Register" %>

 
  
       <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             <div class="title">
        <p>HOME</p>
    </div>
           <div id="container">
              <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

        <HeaderTemplate><div></HeaderTemplate>
            <ItemTemplate>
                <div class="ProductRepeat">
                    <a href="<%# Eval ("Product_Id", "Product.aspx?Id={0}") %>">
                        <div>
                            <asp:Image ID="displayProductImage" runat="server" Height="200px" ImageUrl='<%# Eval("Product_Image") %>' Width="200px" AlternateText='<%# Eval("Product_Description") %>' />

                        </div>
                        <div><%# Eval ("Product_Name") %></div>
                        <div><asp:Label ID="Price_label" runat="server" Text="$"></asp:Label><%# Eval ("Product_Price") %></div>
                        <div><asp:Label ID="Quantity_Label" runat="server" Text="Qty: "></asp:Label><%# Eval ("Product_Quantity") %></div>
                    </a>
                </div>
            </ItemTemplate>
            <FooterTemplate></div></FooterTemplate>

    </asp:Repeater>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626485_j39759_co5027_asg1ConnectionString %>" SelectCommand="SELECT * FROM [Product_Table]"></asp:SqlDataSource>
           </div>

</asp:Content>

