<%@ Page Title="" Language="C#" MasterPageFile="~/reqs.Master" AutoEventWireup="true" CodeBehind="allsongs.aspx.cs" Inherits="Playlistgenerator.allsongs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div class="row small-spacing">
            <div class="col-lg-12 col-xs-12">
                <div class="box-content card white">
                    <h4 class="box-title">All songs</h4>
                    <table class="table">
                        <tr>
                            <td><label for="name" style="margin-top:10px">Song Name</label></td>
                            <td><asp:TextBox ID="name" runat="server" class="form-control" placeholder="Enter Song Name"></asp:TextBox></td>
                            <td><asp:Button ID="b1" runat="server" Text="Search" class="btn btn-success btn-sm waves-effect waves-light" style="margin-top:5px" OnClick="b1_Click"/></td>
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
                                <td><a href="play.aspx?id=<%#Eval("id") %>" style="color:green"><i class="menu-icon fa fa-play">Play</a></td>
                                <td><a href="edit.aspx?id=<%#Eval("id") %>" style="color:blue"><i class="menu-icon fa fa-edit"></i>Edit</a></td>
                                <td><a href="delete.aspx?id=<%#Eval("id") %>" style="color:red"><i class="menu-icon fa fa-trash"></i>Delete</a></td>
                                
                                
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>

                    </asp:Repeater>
                </div>
            </div>
    </div>

</asp:Content>
