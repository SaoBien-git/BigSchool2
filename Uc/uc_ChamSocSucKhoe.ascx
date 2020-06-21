<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_ChamSocSucKhoe.ascx.cs" Inherits="WebsiteCheDoDinhDuong.Uc.uc_ChamSocSucKhoe" %>
<!-- Single Post -->
<asp:Repeater ID="rptLoad" runat="server">
    <ItemTemplate>
        <div class="col-12 col-md-3">
            <div class="single-blog-post style-3">
                <div class="post-thumb">
                    <a href="trangchitiet.aspx?id=<%# Eval("ID") %>">
                       <asp:Image ID="ha" runat="server" ImageUrl='<%# Eval("HinhDaiDien") %>' alt="" /> </a>
                </div>
                <div class="post-data">
                    <a href="trangchitiet.aspx?id=<%# Eval("ID") %>" class="post-catagory"><%# Eval("TieuDe") %></a>
                    <a href="trangchitiet.aspx?id=<%# Eval("ID") %>" class="post-title">
                        <h8><%# Eval("MoTa") %></h8>
                    </a>
                    <!-- <div class="post-meta d-flex align-items-center">
                <a href="#" class="post-like"><img src="img/core-img/like.png" alt=""> <span>392</span></a>
                <a href="#" class="post-comment"><img src="img/core-img/chat.png" alt=""> <span>10</span></a>
            </div> -->
                </div>
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>
