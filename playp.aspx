﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="playp.aspx.cs" Inherits="Playlistgenerator.playp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Playlist Generator</title>
    <link rel="stylesheet" href="assets/styles/style.min.css">
    <link rel="stylesheet" href="assets/plugin/mCustomScrollbar/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" href="assets/plugin/waves/waves.min.css">
    <link rel="stylesheet" href="assets/plugin/sweet-alert/sweetalert.css">
    <link rel="stylesheet" href="assets/color-switcher/color-switcher.min.css">
</head>

<body>
<div class="main-menu">
    <header class="header">
        <a href="index-2.html" class="logo">Playlist Generator</a>
        <button type="button" class="button-close fa fa-times js__menu_close"></button>
    </header>
    <div class="content" style="margin-top:-100px ">
        <div class="navigation">
            <h5 class="title">Navigation</h5>
            <ul class="menu js__accordion">
                <li>
                    <a class="waves-effect" href="home.aspx"><i
                            class="menu-icon fa fa-home"></i><span>Home</span></a>
                </li>
                <li>
                    <a class="waves-effect" href="add_preferences.aspx"><i
                            class="menu-icon fa fa-plus"></i><span>Add preferences</span></a>
                </li>
                
            </ul>


        </div>
    </div>
</div>

<div class="fixed-navbar">
    <div class="pull-left">
        <button type="button" class="menu-mobile-button glyphicon glyphicon-menu-hamburger js__menu_mobile"></button>
        <h1 class="page-title">Playlist Generator</h1>
    </div>
</div>
    <div id="wrapper">
    <div class="main-content">
        <div class="row small-spacing">
            <div class="col-lg-12 col-xs-12">
                <div class="box-content card white">
                    <form id="f1" runat="server">
                    <div>
                        <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                    </div>
                    </form>
                </div>

            </div>

        </div>

    </div>

</div>
<script src="assets/script/html5shiv.min.js"></script>
<script src="assets/script/respond.min.js"></script>
<script src="assets/scripts/jquery.min.js"></script>
<script src="assets/scripts/modernizr.min.js"></script>
<script src="assets/plugin/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/plugin/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="assets/plugin/nprogress/nprogress.js"></script>
<script src="assets/plugin/sweet-alert/sweetalert.min.js"></script>
<script src="assets/plugin/waves/waves.min.js"></script>
<script src="assets/plugin/fullscreen/jquery.fullscreen-min.js"></script>

<script src="assets/scripts/main.min.js"></script>
<script src="assets/color-switcher/color-switcher.min.js"></script>
</body>


</html>
