<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Playlistgenerator.home" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<title>Playlist Generator</title>
	<link rel="stylesheet" href="assets/styles/style.min.css" />
	<link rel="stylesheet" href="assets/plugin/waves/waves.min.css" />

</head>
<body>
    <div id="single-wrapper">
	<form name="form1" action="#" runat="server" class="frm-single">
		<div class="inside">
			<div class="title"><strong>Playlist Generator</strong>
			<div class="frm-title">Welcome to the home page!</div>
			<div class="frm-input"><asp:Button ID="Button1" runat="server" class="frm-submit" Text="Generate Playlist" BackColor="#CC9900" OnClick="Button1_Click" /></div>
			<div class="frm-input"><asp:Button ID="Button2" runat="server" class="frm-submit" Text="Songs based on current mood" BackColor="#993300" OnClick="Button2_Click" /></div>
			<div class="frm-input"><asp:Button ID="Button3" runat="server" class="frm-submit" Text="Songs based on genre" BackColor="#CC9900" OnClick="Button3_Click" /></div>
			<div class="frm-input"><asp:Button ID="Button4" runat="server" class="frm-submit" Text="Songs based on type" BackColor="#993300" OnClick="Button4_Click" /></div>
			<div class="frm-input"><asp:Button ID="Button5" runat="server" class="frm-submit" Text="Admin Login" BackColor="#CC9900" OnClick="Button5_Click" /></div>
		
		</div>
	</form>
    </div>
	<script src="assets/script/html5shiv.min.js"></script>
    <script src="assets/script/respond.min.js"></script>
	<script src="assets/scripts/jquery.min.js"></script>
	<script src="assets/scripts/modernizr.min.js"></script>
	<script src="assets/plugin/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/plugin/nprogress/nprogress.js"></script>
	<script src="assets/plugin/waves/waves.min.js"></script>
	<script src="assets/scripts/main.min.js"></script>
</body>
</html>
