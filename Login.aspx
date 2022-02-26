<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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
                    Login</h2>
                <form id="form1" runat="server">
                <div class="username">
                    <span class="username">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email Required!"
                            ControlToValidate="TextBox1" ValidationGroup="insertData" BackColor="Transparent"
                            ForeColor="White" Display="Dynamic" style="padding:0px;">*</asp:RequiredFieldValidator>Email:</span>
                    <asp:TextBox ID="TextBox1" class="name" runat="server" ValidationGroup="insertData"></asp:TextBox>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="password-agileits">
                    <span class="username">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Required!"
                            ControlToValidate="TextBox2" EnableTheming="False" ValidationGroup="insertData"
                            BackColor="Transparent" ForeColor="White" Display="Dynamic" style="padding:0px;">*</asp:RequiredFieldValidator>Password:</span>
                    <asp:TextBox ID="TextBox2" class="password" runat="server" TextMode="Password" ValidationGroup="insertData"></asp:TextBox>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="rem-for-agile" style="font-weight: bold">
                    &nbsp;&nbsp; &nbsp; &nbsp;<asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="insertData" />
                    <br />
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" /><br>
                    <a href="#"><b>Forgot Password</b></a><br>
                </div>
                <div class="login-w3">
                    <asp:Button ID="Button1" class="login" runat="server" Text="Sign In" OnClick="Button1_Click"
                        ValidationGroup="insertData" />
                </div>
                <div class="clearfix">
                </div>
                </form>
                <div class="back">
                    <a href="Registration.aspx"><font color="white">Don't have an Account?</font> Register
                        <font color="white">here</font></a>
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
