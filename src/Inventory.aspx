<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="Restaurant.Inventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <title>International Restaurant</title>

    <!--Linking the css and bootstrap stylesheet-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <link href="css/inventory.css" rel="stylesheet" /> 
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
                    <li style="background-color: white"><a href="inventory.aspx" style="color:black">INVENTORY</a></li>
                    <li><a href="Reservation_Control.aspx">RESERVATION STATUS</a></li>
                    <li><a href="Purchase.aspx">PURCHASE STOCK</a></li>
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
     <!--Right Layout-->
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
                <h3><b>Current Inventory</b></h3>
                <h4></h4>
            </div>
            <!--End of Info Name Layout-->
            <!--Info details Layout-->
            <div class="info-details">
                
                <!--Form details Layout-->
                <div class="form-data">
                    
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" CssClass="grid">
                            <asp:ListItem Value="Food" Selected="True">Food</asp:ListItem>
                            <asp:ListItem Value="Beverage">Beverage</asp:ListItem>
                            <asp:ListItem Value="Ingredient">Ingredient</asp:ListItem>
                        </asp:DropDownList><br /><br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="grid" >
                            <Columns >
                                <asp:BoundField DataField="id" HeaderText ="Stock ID" />
                                <asp:BoundField DataField="Name" HeaderText ="Name" />
                                <asp:BoundField DataField="Left Stock" HeaderText ="Left Stock" />
                                <asp:BoundField DataField="Min Stock" HeaderText ="Min Stock" />
                            </Columns>
                        </asp:GridView>
                    
                 </div>
             </div>
         </div>
       </div>
        </form>
</body>
</html>
