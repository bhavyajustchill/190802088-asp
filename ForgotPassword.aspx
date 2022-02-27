<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="src/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="src/css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="src/css/morris.css" type="text/css"/>
<!-- Graph CSS -->
<link href="src/css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="src/js/jquery-2.1.4.min.js"></script>
<!-- //jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="src/css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
</head>
<body>
<center><h2>Reset Password Form</h2></center>
<form id="form1" runat="server">
  <div class="form-group" style="padding:0px 50px;">
    <label for="exampleInputEmail1">Email address</label>
      <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
      </asp:DropDownList>
  </div>
  <div class="form-group" style="padding:0px 50px;">
    <label for="exampleInputPassword1">New Password</label>
    <asp:TextBox ID="TextBox1" class="form-control" runat="server" 
          TextMode="Password"></asp:TextBox>
    </div>
  <div class="form-group" style="padding:0px 50px;">
    <label for="exampleInputPassword1">Confirm New Password</label>
    <asp:TextBox ID="TextBox2" class="form-control" runat="server" 
          TextMode="Password"></asp:TextBox><br />
      <asp:Button ID="Button1" class="btn-primary btn" runat="server" 
          Text="Reset Password" onclick="Button1_Click" />
  </div>
</form>
    <script>
        var toggle = true;

        $(".sidebar-icon").click(function () {
            if (toggle) {
                $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
                $("#menu span").css({ "position": "absolute" });
            }
            else {
                $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
                setTimeout(function () {
                    $("#menu span").css({ "position": "relative" });
                }, 400);
            }

            toggle = !toggle;
        });
							</script>
<!--js -->
<script src="src/js/jquery.nicescroll.js"></script>
<script src="src/js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="src/js/bootstrap.min.js"></script>
   <!-- /Bootstrap Core JavaScript -->	   
</body>
</html>
