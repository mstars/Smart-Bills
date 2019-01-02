<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <meta charset="utf-8"/>
  <title>HBS| A complete Hostel Billing System</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
  <meta content="" name="keywords"/>
  <meta content="" name="description"/>

  <!-- Favicons -->
  <link href="_img/_design/_icons/profile.jpg" rel="icon"/>
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon"/>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet"/>

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
  <link href="lib/animate/animate.min.css" rel="stylesheet"/>
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet"/>
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet"/>
  <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet"/>

  <!-- Main Stylesheet File -->
  <link href="_css/style.css" rel="stylesheet"/>

<style type="text/css">
body {
			min-width: 630px;
		}

		#container {
			padding-left: 200px;
			padding-right: 190px;
		}
		
		#container .column {
			position: relative;
			float: left;
		}
		
		#center {
			padding: 10px 20px;
			width: 100%;
		}
		
		#left {
			width: 180px;
			padding: 0 10px;
			right: 240px;
			margin-left: -100%;
		}
		
		#right {
			width: 130px;
			padding: 0 10px;
			margin-right: -100%;
		}
		
		#footer {
			clear: both;
		}
		
		/* IE hack */
		* html #left {
			left: 150px;
		}

		/* Make the columns the same height as each other */
		#container {
			overflow: hidden;
		}

		#container .column {
			padding-bottom: 1001em;
			margin-bottom: -1000em;
		}

		/* Fix for the footer */
		* html body {
			overflow: hidden;
		}
		
		* html #footer-wrapper {
			float: left;
			position: relative;
			width: 100%;
			padding-bottom: 10010px;
			margin-bottom: -10000px;
			background: #fff;
		}

		/* Aesthetics */
		body {
			margin: 0;
			padding: 0;
			font-family:Sans-serif;
			line-height: 1.5em;
		}
		
		p {
			color: #555;
		}

		nav ul {
			list-style-type: none;
			margin: 0;
			padding: 0;
		}
		
		nav ul a {
			color: darkgreen;
			text-decoration: none;
		}

		#header, #footer {
			font-size: large;
			padding: 0.3em;
			background: #BCCE98;
		}

		#left {
			background: #DAE9BC;
		}
		
		#right {
			background: #F7FDEB;
		}

		#center {
			background: #fff;
		}

		#container .column {
			padding-top: 1em;
		}
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
           <header id="header">
    <div class="container-fluid">

      <div id="logo" class="pull-left">
        <h1><a href="#" class="scrollto">HBS</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="#intro"><img src="img/logo.png" alt="" title="" /></a>-->
      </div>

 
      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li><a href="index.aspx">Home</a></li>
          <li><a href="about.aspx">About Us</a></li>
          <li><a href="general_rules.aspx">General Rules</a></li>
          <li><a href="fees_structre.aspx">Fees Structre</a></li>
          <li><a href="student_registration.aspx">Register</a></li>
          <li class="menu-active"><a href="login.aspx">Login</a></li>
        
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
          </header><!-- #header -->

      <div class="container" style="margin-top: 10px;border: 1px solid #bcce98; color:#bcce98; padding-top:5%; padding-left:5%; padding-right:5%; font-family:Century";">
                    <h1 style="text-align:center;color:#bcce98;font-family:'Lucida Sans Unicode';  color:#808080;">Log In</h1>

      <div class="container" style="margin-top: 10px;color:#808080; padding-top:5%; padding-left:25%; padding-right:5%; font-family:Century";">
              <p class="container"  style="margin-top: 10px;border: 1px #bcce98; #808080;  padding-left:5%; padding-right:5%; font-family:Century";">
                  <span class="auto-style20">Username</span> <asp:TextBox CssClass="border-primary" ID="userid" runat="server" contentplaceholder="Userid"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userid" ErrorMessage="Please enter the username" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br/><br/>
                  <span class="auto-style20">Password</span>  &nbsp;<asp:TextBox CssClass="border-primary" ID="password" runat="server" contentplaceholder="password" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Please enter the password" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br/>
                  <asp:Label ID="log_error" runat="server" ForeColor="#00CC99" Text="Invalid userid/password" Visible="False"></asp:Label>
                  <br/>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button CssClass="btn-success" ID="login_btn" runat="server" Text="Login" OnClick="login_btn_Click" />
      </p>
      </div>
                <br/>
          <br/>
          <br/>
          <br/>

                </div>

</asp:Content>

