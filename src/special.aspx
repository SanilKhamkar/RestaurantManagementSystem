﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="special.aspx.cs" Inherits="Restaurant.special" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>International Restaurant</title>

    <!--Linking the css and bootstrap stylesheet-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <link href="css/dinner.css" rel="stylesheet" />
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
                    <li><a href="appetizers.aspx">APPETIZERS</a></li>
                    <li><a href="lunch.aspx">LUNCH</a></li>
                    <li><a href="dinner.aspx">DINNER</a></li>
                    <li style="background-color: white"><a href="special.aspx" style="color:black">SPECIALS</a></li>
                    <li><a href="menu.aspx">GO BACK TO MENU</a></li>
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
                <h5 style="font-size: 12px;"><%=Session["log"]%></h5>
                <h6 style="color: lightseagreen"> <%=Session["uname"]%><%=Session["adname"]%><%=Session["empname"] %></h6>
                <asp:Button ID="Button2" runat="server" Visible="False" Text="Logout" OnClick="Button2_Click" cssClass="btn btn-amber btn-lg"/>
            </div>
        </form>
        <!--Info Layout-->
        <div class="info">
            <!--Info Name Layout-->
            <div class="info-name">
                <h3><b>Special Cuisine</b></h3>
                <h4></h4>
            </div>
            <!--End of Info Name Layout-->

            <!--Info details Layout-->
            <div class="info-details">
                <!--Display Menu Items-->
                <div class="card">
                    <img class="card-img-top" src="Images/chk_haba.jpg" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-text" style="color: black;"><b>Chicken Habanero Sandwich {$7}</b></p>
                    </div>
                </div>

                 <div class="card">
                    <img class="card-img-top" src="Images/lomo_sal.jpg" alt="Card image cap">                                             
                    <div class="card-body">
                        <p class="card-text" style="color: black;"><b>Lomo Saltado {$9}</b></p>
                    </div>
                </div>

                <div class="card">
                    <img class="card-img-top" src="Images/chk_tandoori.jpg" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-text" style="color: black;"><b>Chicken Tandoori {$11}</b></p>
                    </div>
                </div>

                <div class="card">
                    <img class="card-img-top" src="Images/Jjigae.jpg" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-text" style="color: black;"><b>Jjigae {$12}</b></p>
                    </div>
                </div>        

                <div class="card">
                    <img class="card-img-top" src="Images/japchae.jpg" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-text" style="color: black;"><b>Japchae {$12}</b></p>
                    </div>
                </div>

                <div class="card">
                    <img class="card-img-top" src="Images/lamb_chops.jpg" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-text" style="color: black;"><b>Lamb Chops {$15}</b></p>
                    </div>
                </div>
                <!--End of Display Menu Items-->
            </div>
            <!--End of Info details Layout-->
        </div>
        <!--End of Info Layout-->
    </div>    
    <!--End of Right Layout-->
</body>
</html>
