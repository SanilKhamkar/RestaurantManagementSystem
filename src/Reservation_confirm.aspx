<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservation_confirm.aspx.cs" Inherits="CalendarTest.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>International Restaurant</title>

    <!--Linking the css and bootstrap stylesheet-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <link href="css/reservation_confirm.css" rel="stylesheet" />
</head>
<body>
    <form id="form2" runat="server">
    <!--Main Wrapper-->
    <div class="main-wrapper">
        <div class="user-logout">
                <h5 style="font-size: 12px; color: black;"><%=Session["log"]%></h5>
                <h6 style="color: lightseagreen"> <%=Session["uname"]%><%=Session["adname"]%><%=Session["empname"] %></h6>
                <asp:Button ID="Button2" runat="server" Visible="False" Text="Logout" OnClick="Button2_Click" cssClass="btn btn-amber btn-lg"/>
            </div>
        
            <!--Form Layout-->
            <div class="form-layout">
                <h3><u>Reservation Confirmation</u></h3>
    
                <asp:Label ID="confirm_1" runat="server" Visible="true"></asp:Label>
                <div>
                </div>
                <p>
                <asp:Label ID="confirm_2" runat="server" Visible="true"></asp:Label>
                </p>
                <p>
                    &nbsp;</p>
                <p>
                <asp:Label ID="confirm_3" runat="server" Visible="false"></asp:Label>
                </p>
                <div class="signup">
                <h6 style="margin-left: 17.5rem;">Go back to <a href="home.aspx" style="color: lightseagreen;">Home</a> page</h6>
            </div>
             </div>

            
        </div>
            </form>
</body>
</html>
