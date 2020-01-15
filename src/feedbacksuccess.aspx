<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feedbacksuccess.aspx.cs" Inherits="Restaurant.feedbacksuccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>International Restaurant</title>

    <!--Linking the css and bootstrap stylesheet-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <link href="css/signupsuccess.css" rel="stylesheet" />
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
                    <li><a href="menu.aspx">MENU</a></li>
                    <li><a href="reservation.aspx">RESERVATION</a></li>
                    <li><a href="login.aspx">LOGIN</a></li>
                    <li style="background-color: white"><a href="feedback.aspx" style="color:black">FEEDBACK</a></li>
                    <li><a href="info.aspx">INFO</a></li>
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
                <asp:Button ID="Button2" runat="server" Visible="False" Text="Logout" OnClick="Button2_Click" cssClass="btn btn-amber btn-lg"/>
            </div>
             </form>
        <!--Info Layout-->
        <div class="info">
            <!--Info Name Layout-->
            <div class="info-name">
                <h3><b>Thankyou for your Feedback</b></h3>
                <h4></h4>
            </div>
            <!--End of Info Name Layout-->

            <!--Info details Layout-->
            <div class="info-details">
                <!--Form details Layout-->
                    <h6>Go back to <a href="feedback.aspx">Feedback Page</a></h6>
                
            </div>
            <!--End of Info details Layout-->
        </div>
        <!--End of Info Layout-->
    </div>    
    <!--End of Right Layout-->
</body>
</html>
