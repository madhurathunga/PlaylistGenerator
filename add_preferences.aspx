<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_preferences.aspx.cs" Inherits="Playlistgenerator.add_preferences" %>

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
                        <div class="row small-spacing">
            <div class="col-lg-12 col-xs-12">
                <div class="box-content card white">
                    <h4 class="box-title">Songs based on preferences</h4>
                    <table class="table">
                        <tr>
                            <td>
                                <asp:DropDownList ID="mood" runat="server" class="form-control">
                                    <asp:ListItem>Current mood</asp:ListItem>
                                    <asp:ListItem>Happy</asp:ListItem>
                                    <asp:ListItem>Energetic</asp:ListItem>
                                    <asp:ListItem>Sad</asp:ListItem>
                                    <asp:ListItem>Calm</asp:ListItem>
                                    <asp:ListItem>Contentment</asp:ListItem>
                                    <asp:ListItem>Depression</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:DropDownList ID="genre" runat="server" class="form-control">
                                    <asp:ListItem>Genre</asp:ListItem>
                                    <asp:ListItem>Classical</asp:ListItem>
                                    <asp:ListItem>Jazz</asp:ListItem>
                                    <asp:ListItem>Rock</asp:ListItem>
                                    <asp:ListItem>Rhythm and Blues</asp:ListItem>
                                    <asp:ListItem>Pop</asp:ListItem>
                                    <asp:ListItem>Filmi</asp:ListItem>
                                    <asp:ListItem>Folk</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:DropDownList ID="type" runat="server" class="form-control">
                                    <asp:ListItem>Language</asp:ListItem>
                                    <asp:ListItem>Kannada</asp:ListItem>
                                    <asp:ListItem>Hindi</asp:ListItem>
                                    <asp:ListItem>English</asp:ListItem>
                                    <asp:ListItem>Tamil</asp:ListItem>
                                    <asp:ListItem>Telugu</asp:ListItem>
                                    <asp:ListItem>Malayalam</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td><asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-success btn-sm waves-effect waves-light" style="margin-top:5px" OnClick="b1_Click"/></td>
                        </tr>
                    </table>
                    <asp:Repeater id="r1" runat="server">
                        <HeaderTemplate>
                            <table class="table table-bordered">
                                <tr>
                                    <th>Song</th>
                                    <th>Album</th>
                                    <th>Mood</th>
                                    <th>Genre</th>
                                    <th>Actor</th>
                                    <th>Director</th>
                                    <th>Lyricist</th>
                                    <th>Singer</th>
                                    <th>Language</th>
                                    <th>Play?</th>
                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("name") %></td>
                                <td><%#Eval("movie") %></td>
                                <td><%#Eval("mood") %></td>
                                <td><%#Eval("genre") %></td>
                                <td><%#Eval("actor") %></td>
                                <td><%#Eval("director") %></td>
                                <td><%#Eval("lyricist") %></td>
                                <td><%#Eval("singer") %></td>
                                <td><%#Eval("type") %></td>
                                <td><a href="playp.aspx?id=<%#Eval("id") %>" style="color:green"><i class="menu-icon fa fa-play">Play</a></td>
                                
                                
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>

                    </asp:Repeater>
                </div>
            </div>
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
