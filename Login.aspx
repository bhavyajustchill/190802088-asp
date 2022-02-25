﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <link href="src/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="src/css/style.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="src/css/morris.css" type="text/css" />
    <!-- Graph CSS -->
    <link href="src/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/jquery-ui.css">
    <!-- jQuery -->
    <script src="src/js/jquery-2.1.4.min.js"></script>
    <!-- //jQuery -->
    <link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400'
        rel='stylesheet' type='text/css' />
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet'
        type='text/css'>
    <!-- lined-icons -->
    <link rel="stylesheet" href="src/css/icon-font.min.css" type='text/css' />
    <!-- //lined-icons -->
</head>
<body>
    <div class="main-wthree">
        <div class="container">
            <div class="sin-w3-agile">
                <h2>
                    Sign In</h2>
                <form id="form1" runat="server">
                <div class="username">
                    <span class="username">Email:</span>
                    <asp:TextBox ID="TextBox1" class="name" runat="server"></asp:TextBox>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="password-agileits">
                    <span class="username">Password:</span>
                    <asp:TextBox ID="TextBox2" class="password" runat="server" 
                        TextMode="Password"></asp:TextBox>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="rem-for-agile">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" /><br>
                    <a href="#"><b>Forgot Password</b></a><br>
                </div>
                <div class="login-w3">
                    <asp:Button ID="Button1" class="login" runat="server" Text="Sign In" 
                        onclick="Button1_Click" />
                </div>
                <div class="clearfix">
                </div>
                </form>
                
                <div class="back">
					 <a href="Registration.aspx"><font color="white">Don't have an Account?</font> Register <font color="white">here</font></a> 
				</div>
                
                <div class="footer">
                    <p>
                        &copy; 2022 JustChill Inc.
                    </p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
