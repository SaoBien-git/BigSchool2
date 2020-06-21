<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_YTeCongCong.ascx.cs" Inherits="WebsiteCheDoDinhDuong.Uc.uc_YTeCongCong" %>
<asp:Repeater ID="rptLoad" runat="server">
    <ItemTemplate>
        <div class="single-blog-post small-featured-post d-flex">
            <div class="post-thumb">
                <a href="trangchitiet.aspx?id=<%# Eval("ID") %>">
            </div>
            <div class="post-data">
                <a href="trangchitiet.aspx?id=<%# Eval("ID") %>" class="post-catagory"><%# Eval("HoTen") %></a>
                <div class="post-meta">
                    <p class="post-date"><span>Ngày cập nhật: </span> | <span><%# Eval("NgayTao") %></span></p>
                </div>
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>

