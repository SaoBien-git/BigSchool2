<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_SanPhamLienQuan.ascx.cs" Inherits="WebsiteCheDoDinhDuong.Uc.uc_SanPhamLienQuan" %>
<div class="row">

    <!-- Single Post -->
    <asp:Repeater ID="rptLoad" runat="server">
    <ItemTemplate>
    <div class="col-12 col-lg-2">
        <div class="single-blog-post">
            <div class="post-thumb">
                <a href="trangchitiet.aspx?id=<%# Eval("ID") %>"> <asp:Image ID="ha" runat="server" ImageUrl='<%# Eval("HinhDaiDien") %>' alt="" /> </a>
            </div>
            <div class="post-data">
                <a href="trangchitiet.aspx?id=<%# Eval("ID") %>" class="post-title">
                    <h6><%# Eval("TieuDe") %></h6>
                </a>
                <div class="post-meta">
                    <div class="post-date"><a href="#">Ngày tạo: <%# Eval("NgayTao") %></a></div>
                </div>
            </div>
        </div>
    </div>
           </ItemTemplate>
</asp:Repeater>
</div>