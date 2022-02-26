<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
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
<link rel="stylesheet" href="src/css/jquery-ui.css"> 
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
<div class="main-wthree">
	<div class="container">
	<div class="sin-w3-agile">
		<h2>Registration Form</h2>
		<form id="form1" runat="server">
			<div class="username">
				<span class="username">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Name Required!" BackColor="Transparent" 
                    ControlToValidate="TextBox1" Display="Dynamic" ForeColor="White" 
                    style="padding:0px;" EnableTheming="False" ValidationGroup="registerData">*</asp:RequiredFieldValidator>Full Name:</span>
                <asp:TextBox ID="TextBox1" class="name" runat="server" 
                    ValidationGroup="registerData"></asp:TextBox>
				<div class="clearfix"></div>
			</div>
			<div class="username">
				<span class="username">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Email Required!" BackColor="Transparent" 
                    ControlToValidate="TextBox2" Display="Dynamic" ForeColor="White" 
                    style="padding:0px;" EnableTheming="False" ValidationGroup="registerData">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator
                        ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Invalid Email Address!" BackColor="Transparent" 
                    ControlToValidate="TextBox2" ForeColor="White" 
                    ValidationGroup="registerData" EnableTheming="False" style="padding:0px;" 
                    Display="Dynamic" 
                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>Email:</span>
				<asp:TextBox ID="TextBox2" class="name" runat="server" 
                    ValidationGroup="registerData" EnableTheming="False"></asp:TextBox>
				<div class="clearfix"></div>
			</div>
			<div class="password-agileits">
				<span class="username">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Password Required!" BackColor="Transparent" 
                    ControlToValidate="TextBox3" Display="Dynamic" ForeColor="White" 
                    style="padding:0px;" EnableTheming="False" ValidationGroup="registerData">*</asp:RequiredFieldValidator>Password:</span>
				<asp:TextBox ID="TextBox3" class="name" runat="server" TextMode="Password" 
                    ValidationGroup="registerData"></asp:TextBox>
				<div class="clearfix"></div>
			</div>
			<div class="password-agileits">
				<span class="username">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Confirm Password Required!" BackColor="Transparent" 
                    ControlToValidate="TextBox4" Display="Dynamic" ForeColor="White" 
                    style="padding:0px;" EnableTheming="False" ValidationGroup="registerData">*</asp:RequiredFieldValidator><asp:CompareValidator
                        ID="CompareValidator1" runat="server" 
                    ErrorMessage="Passwords don't Match!" BackColor="Transparent" 
                    ControlToCompare="TextBox3" ControlToValidate="TextBox4" Display="Dynamic" 
                    EnableTheming="False" ForeColor="White" ValidationGroup="registerData" style="padding:0px;">*</asp:CompareValidator>Confirm Password:</span>
				<asp:TextBox ID="TextBox4" class="name" runat="server" TextMode="Password" 
                    ValidationGroup="registerData"></asp:TextBox>
				<div class="clearfix"></div>
			</div>
            <div class="rem-for-agile" style="font-weight: bold">
                    &nbsp;&nbsp; &nbsp; &nbsp;<asp:ValidationSummary 
                        ID="ValidationSummary1" runat="server" ValidationGroup="registerData" />
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal><br />
                </div>
			<div class="login-w3">
                <asp:Button ID="Button1" class="login" runat="server" Text="Register" 
                    onclick="Button1_Click" ValidationGroup="registerData" />
			</div>
			<div class="clearfix"></div>
		<div class="back">
						<a href="Login.aspx"><font color="white">Already have an Account?</font> Login <font color="white"></font></a>
				</div>       
				<div class="footer">
					<p>&copy; 2022 JustChill Inc.</p>
				</div>
		</form>
	</div>
	</div>
	</div>

<!--    
    <div>
    
    </div>
     -->
</body>
</html>
