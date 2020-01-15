<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Purchase.aspx.cs" Inherits="Restaurant.Purchase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>International Restaurant</title>

    <!--Linking the css and bootstrap stylesheet-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <link href="css/purchase.css" rel="stylesheet" />
</head>
<body>
    <!--Left Layout-->
    <div class="left-layout">
        <!--Menu Background Layout-->
        <div class="menu-layout">
            <!--Menu Name Layout-->
            <div class="title-layout">
                <h6><b>International</b></h6>
                <h6><b>Restaurant</b></h6>
            </div>
            <!--End of Menu Name Layout-->

            <!--Main Topics Layout-->
            <div class="topics-layout">
                <ul>
                    <li ><a href="inventory.aspx">INVENTORY</a></li>
                    <li><a href="Reservation_Control.aspx">RESERVATION STATUS</a></li>
                    <li style="background-color: white"><a href="Purchase.aspx" style="color:black">PURCHASE STOCK</a></li>
                    <li><a href="Reservation.aspx">RESERVATION</a></li>
                    <li><a href="menu.aspx">MENU</a></li>    

                </ul>
            </div>
            <!--End of Main Topics Layout-->
        </div>
        <!--End of Menu Background Layout-->
    </div>
    <!--End of Left Layout-->

<form id="form1" runat="server">
    <div class="right-layout">
        <div class="user-logout">
                <h5 style="font-size: 12px; color: black;"><%=Session["log"]%></h5>
                <h6 style="color: lightseagreen"> <%=Session["uname"]%><%=Session["adname"]%><%=Session["empname"] %></h6>
                <asp:Button ID="Button2" runat="server" Visible="False" Text="Logout" OnClick="Button2_Click" cssClass="btn btn-amber btn-lg"/>
            </div>
        <!--Info Layout-->
        <div class="info">
            <!--Info Name Layout-->
            <div class="info-name">
                <h3><b>Purchase</b></h3>
                <h4></h4>
            </div>
            <!--End of Info Name Layout-->

            <!--Info details Layout-->
            <div class="info-details">
                <div class="form-data">
                        <div class="label">
                            <asp:Label ID="Label1" runat="server" Text="Item Purchase: " CssClass="label"></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text="Item Name: " CssClass="label"></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text="Quantity: " CssClass="label"></asp:Label>
                            <asp:Label ID="Label4" runat="server" Text="Price: " CssClass="label"></asp:Label>
                            <asp:Label ID="Label5" runat="server" Text="Seller's Email: " CssClass="label"></asp:Label>
                        </div>
                           
                        <div class="text">
                            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="dropdown">
                                <asp:ListItem Value="Food" Selected="True">Food</asp:ListItem>
                                <asp:ListItem Value="Beverage">Beverage</asp:ListItem>
                                <asp:ListItem Value="Ingredient">Ingredient</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                            
                           
                            <asp:TextBox ID="item_name" runat="server" CssClass="textbox1"></asp:TextBox>            
                            <asp:Label ID="item_warning" Visible="false" runat="server" ForeColor="Red" Text="*Input the item name"></asp:Label>                          
                                                    
                            
                            <asp:TextBox ID="quantity_text" runat="server" Style="text-align: right" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);" CssClass="textbox2"></asp:TextBox><h6>lbs</h6>
                            <asp:Label ID="quantity_warning" Visible="false" runat="server" ForeColor="Red" Text="*Input the quantity of item" CssClass="label"></asp:Label>
                                                      
                                                      
                            <asp:TextBox ID="price_text" runat="server" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);" CssClass="textbox3"></asp:TextBox><h6>$</h6>
                            <asp:Label ID="price_warning" Visible="false" runat="server" ForeColor="Red" Text="*Input the price of item"></asp:Label>             
                                                                                                                
                            
                            <asp:TextBox ID="email_text" runat="server" TextMode="Email" CssClass="textbox4"></asp:TextBox>
                            <asp:Label ID="email_warning" Visible="false" runat="server" ForeColor="Red" Text="*Input the Seller's email address"></asp:Label>                           
                                                  
                        </div>
                           <div class="button">
                                <asp:Button ID="Button1" runat="server" Text="Purchase" OnClick="Button1_Click" CssClass="btn btn-mdb-color btn-lg"/>
                            </div>  
                            
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
