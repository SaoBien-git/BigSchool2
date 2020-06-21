<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CheDoList.ascx.cs" Inherits="WebsiteCheDoDinhDuong.Uc.CheDoList" %>

<!-- Single Featured Post -->
<div class="single-blog-post featured-post-2">
    <asp:Repeater ID="rptCheDo" runat="server">
        <ItemTemplate>
     <div class="single-blog-post small-featured-post d-flex">
            <div class="post-thumb">
                <a href="trangchitiet.aspx?id=<%# Eval("ID") %>">
                    <asp:Image ID="ha" runat="server" ImageUrl='<%# Eval("HinhDaiDien") %>' alt="" /> </a>
            </div>
            <div class="post-data">
                <a href="trangchitiet.aspx?id=<%# Eval("ID") %>" class="post-catagory"><%# Eval("ChuDe") %></a>
                <div class="post-meta">
                    <a href="#" class="post-title">
                        <h6><%# Eval("DiaDiem")%></h6>
                    </a>
                    <p class="post-date"><span>Ngày tạo: </span> | <span><%# Eval("NgayTao") %></span></p>
                </div>
            </div>
        </div>
          
        </ItemTemplate>
    </asp:Repeater>
</div>
