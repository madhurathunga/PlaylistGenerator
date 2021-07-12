<%@ Page Title="" Language="C#" MasterPageFile="~/reqs.Master" AutoEventWireup="true" CodeBehind="add_songs.aspx.cs" Inherits="Playlistgenerator.add_songs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div class="row small-spacing">
            <div class="col-lg-12 col-xs-12">
                <div class="box-content card white">
                    <h4 class="box-title">Add new song</h4>

                    <div class="card-content">
                       
                            <div class="form-group">
                                <label for="name">Song Name</label>
                                <asp:TextBox ID="name" runat="server" class="form-control" placeholder="Enter Song Name"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="movie">Album Name</label>
                                <asp:TextBox ID="movie" runat="server" class="form-control" placeholder="Enter Album Name"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="mood">Mood of the song</label>
                                <asp:DropDownList ID="mood" runat="server" class="form-control">
                                    <asp:ListItem Value="">Please Select</asp:ListItem>
                                    <asp:ListItem>Happy</asp:ListItem>
                                    <asp:ListItem>Energetic</asp:ListItem>
                                    <asp:ListItem>Sad</asp:ListItem>
                                    <asp:ListItem>Calm</asp:ListItem>
                                    <asp:ListItem>Contentment</asp:ListItem>
                                    <asp:ListItem>Depression</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label for="genre">Genre</label>
                                <asp:DropDownList ID="genre" runat="server" class="form-control">
                                    <asp:ListItem Value="">Please Select</asp:ListItem>
                                    <asp:ListItem>Classical</asp:ListItem>
                                    <asp:ListItem>Jazz</asp:ListItem>
                                    <asp:ListItem>Rock</asp:ListItem>
                                    <asp:ListItem>Rhythm and Blues</asp:ListItem>
                                    <asp:ListItem>Pop</asp:ListItem>
                                    <asp:ListItem>Filmi</asp:ListItem>
                                    <asp:ListItem>Folk</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label for="actor">Starring Actor</label>
                                <asp:TextBox ID="actor" runat="server" class="form-control" placeholder="Enter actor starring"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="director">Music Director</label>
                                <asp:TextBox ID="director" runat="server" class="form-control" placeholder="Enter Music Director"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="lyricist">Lyricist</label>
                                <asp:TextBox ID="lyricist" runat="server" class="form-control" placeholder="Enter Lyricist"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="singer">Singer</label>
                                <asp:TextBox ID="singer" runat="server" class="form-control" placeholder="Enter Singer"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="type">Song Language</label>
                                <asp:DropDownList ID="type" runat="server" class="form-control">
                                    <asp:ListItem Value="">Please Select</asp:ListItem>
                                    <asp:ListItem>Kannada</asp:ListItem>
                                    <asp:ListItem>Hindi</asp:ListItem>
                                    <asp:ListItem>English</asp:ListItem>
                                    <asp:ListItem>Tamil</asp:ListItem>
                                    <asp:ListItem>Telugu</asp:ListItem>
                                    <asp:ListItem>Malayalam</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label for="link">Song Youtube link</label>
                                <asp:TextBox ID="link" runat="server" class="form-control" placeholder="Enter embedded youtube link of song"></asp:TextBox>
                            </div>


                            
                            <asp:Button ID="b1" runat="server" Text="Add song" class="btn btn-success btn-sm waves-effect waves-light" OnClick="b1_Click"/>
                   
                    </div>

                </div>

            </div>

        </div>

</asp:Content>
