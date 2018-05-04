<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebApplication1.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="title">
        <p>Product</p>
    </div>
     <asp:FormView ID="FormView1" runat="server" DataKeyNames="Product_Id" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Product_Id:
            <asp:Label ID="Product_IdLabel1" runat="server" Text='<%# Eval("Product_Id") %>' />
            <br />
            Product_Name:
            <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("Product_Name") %>' />
            <br />
            Product_Description:
            <asp:TextBox ID="Product_DescriptionTextBox" runat="server" Text='<%# Bind("Product_Description") %>' />
            <br />
            Product_Price:
            <asp:TextBox ID="Product_PriceTextBox" runat="server" Text='<%# Bind("Product_Price") %>' />
            <br />
            Product_Size:
            <asp:TextBox ID="Product_SizeTextBox" runat="server" Text='<%# Bind("Product_Size") %>' />
            <br />
            Product_Image:
            <asp:TextBox ID="Product_ImageTextBox" runat="server" Text='<%# Bind("Product_Image") %>' />
            <br />
            Product_Quantity:
            <asp:TextBox ID="Product_QuantityTextBox" runat="server" Text='<%# Bind("Product_Quantity") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Product_Id:
            <asp:TextBox ID="Product_IdTextBox" runat="server" Text='<%# Bind("Product_Id") %>' />
            <br />
            Product_Name:
            <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("Product_Name") %>' />
            <br />
            Product_Description:
            <asp:TextBox ID="Product_DescriptionTextBox" runat="server" Text='<%# Bind("Product_Description") %>' />
            <br />
            Product_Price:
            <asp:TextBox ID="Product_PriceTextBox" runat="server" Text='<%# Bind("Product_Price") %>' />
            <br />
            Product_Size:
            <asp:TextBox ID="Product_SizeTextBox" runat="server" Text='<%# Bind("Product_Size") %>' />
            <br />
            Product_Image:
            <asp:TextBox ID="Product_ImageTextBox" runat="server" Text='<%# Bind("Product_Image") %>' />
            <br />
            Product_Quantity:
            <asp:TextBox ID="Product_QuantityTextBox" runat="server" Text='<%# Bind("Product_Quantity") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Product_Id:

            <asp:Label ID="Product_IdLabel" runat="server" Text='<%# Eval("Product_Id") %>' />
            <br />
            Product_Image:
            <asp:Label ID="Product_ImageLabel" runat="server" Text='<%# Bind("Product_Image") %>' />
            <br />
            Product_Name:
            <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Bind("Product_Name") %>' />
            <br />
            Product_Description:
            <asp:Label ID="Product_DescriptionLabel" runat="server" Text='<%# Bind("Product_Description") %>' />
            <br />
            Product_Price:
            <asp:Label ID="Product_PriceLabel" runat="server" Text='<%# Bind("Product_Price") %>' />
            <br />
            <br />
            Product_Quantity:
            <asp:Label ID="Product_QuantityLabel" runat="server" Text='<%# Bind("Product_Quantity") %>' />
            <asp:DropDownList ID="DropDownList1" runat="server" Width="159px">
                <asp:ListItem Selected="True" Value="None">Select Product Quantity </asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem> 
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Purchase Now" />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626485_j39759_co5027_asg1ConnectionString %>" SelectCommand="SELECT * FROM [Product_Table] WHERE ([Product_Id] = @Product_Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Product_Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
