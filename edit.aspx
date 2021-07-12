<%@ Page Title="" Language="C#" MasterPageFile="~/reqs.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="Playlistgenerator.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div class="row small-spacing">
            <div class="col-lg-12 col-xs-12">
                <div class="box-content card white">
                    <h4 class="box-title">Update Contact</h4>

                    <div class="card-content">
                       
                            <div class="form-group">
                                <label for="name">Song Name</label>
                                <asp:TextBox ID="name" runat="server" class="form-control" placeholder="Enter Song Name"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="movie">Movie Name</label>
                                <asp:TextBox ID="movie" runat="server" class="form-control" placeholder="Enter Movie Name"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="mood">Mood of the song</label>
                                <asp:TextBox ID="mood" runat="server" class="form-control" placeholder="Enter Song mood"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="genre">Genre</label>
                                <asp:TextBox ID="genre" runat="server" class="form-control" placeholder="Enter Genre of song"></asp:TextBox>
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
                                <label for="singer">City</label>
                                <asp:TextBox ID="singer" runat="server" class="form-control" placeholder="Enter Singer"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="type">Song Type</label>
                                <asp:TextBox ID="type" runat="server" class="form-control" placeholder="Enter type of song"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="link">Song Youtube link</label>
                                <asp:TextBox ID="link" runat="server" class="form-control" placeholder="Enter embedded youtube link of song"></asp:TextBox>
                            </div>


                            
                            <asp:Button ID="b1" runat="server" Text="Update song details" class="btn btn-success btn-sm waves-effect waves-light" OnClick="b1_Click"/>
                   
                    </div>

                </div>

            </div>

        </div>

</asp:Content>
