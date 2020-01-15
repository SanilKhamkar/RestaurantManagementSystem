<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admincontrol.aspx.cs" Inherits="Restaurant.admincontrol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>International Restaurant</title>

    <!--Linking the css and bootstrap stylesheet-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <link href="css/loginsuccess.css" rel="stylesheet" />
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
                    <li><a href="Inventory.aspx">INVENTORY</a></li>
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

    <!--Right Layout-->
    <div class="right-layout">
        <form id="form1" runat="server">
            <div class="user-logout">
                <h5 style="font-size: 12px; color: black;"><%=Session["log"]%></h5>
                <h6 style="color: lightseagreen"> <%=Session["uname"]%><%=Session["adname"]%><%=Session["empname"] %></h6>
                <asp:Button ID="Button1" runat="server" Visible="False" Text="Logout" OnClick="Button1_Click1" cssClass="btn btn-amber btn-lg"/>                
            </div>
        </form>
        <!--Info Layout-->
        <div class="info">
            <!--Info Name Layout-->
            <div class="info-name">
                <h3><b>Login Successful</b></h3>
                <h4></h4>
            </div>
            <!--End of Info Name Layout-->

            <!--Info details Layout-->
            <div class="info-details">
                <!--Form details Layout-->
                   <h2 style="color: lightseagreen"> <%=Session["weladmin"]%>&nbsp<%=Session["adname"]%></h2>
                   <h2 style="color: lightseagreen"> <%=Session["welemp"]%>&nbsp<%=Session["empname"] %></h2>
                <!--End of Form Layout-->

                <!--Sign-up Layout-->
                
                <!--End of Sign-up Layout-->
            </div>
            <!--End of Info details Layout-->
        </div>
        <!--End of Info Layout-->
    </div>    
    <!--End of Right Layout-->
</body>
</html>
