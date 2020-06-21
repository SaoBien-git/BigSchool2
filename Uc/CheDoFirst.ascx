<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CheDoFirst.ascx.cs" Inherits="WebsiteCheDoDinhDuong.Uc.CheDoFirst" %>
<div class="single-blog-post featured-post">
    <asp:Repeater ID="rptCheDoFirst" runat="server">
        <ItemTemplate>
            <div class="post-thumb">
                <a href="trangchitiet.aspx?id=<%# Eval("ID") %>">
                    <asp:Image ID="ha" runat="server" ImageUrl='<%# Eval("HinhDaiDien") %>' alt="" Width="300px" Height="200px" />
                </a>
            </div>
            <div class="post-data">

                <a href="trangchitiet.aspx?id=<%# Eval("ID") %>" class="post-title">
                    <h4 style="color:red"><%# Eval("ChuDe") %></h4>
                </a>
                <div class="post-meta">
                    <p class="post-author">Người tạo: <a href="#"><%# Eval("NguoiTao") %></a> || Ngày tạo: <%#Eval("NgayTao") %></p>
                    <p class="post-excerp"><%# Eval("DiaDiem") %> </p>
                    <%--  Post Like & Post Comment 
             <div class="d-flex align-items-center">
                 <a href="#" class="post-like">
                     <img src="img/core-img/like.png" alt="">
                     <span>392</span></a>
                 <a href="#" class="post-comment">
                     <img src="img/core-img/chat.png" alt="">
                     <span>10</span></a>
             </div>--%>
                </div>


            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
