<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_TinTucSuKien.ascx.cs" Inherits="WebsiteCheDoDinhDuong.Uc.uc_TinTucSuKien" %>


<div class="row">

    <!-- Single Post -->
    <asp:Repeater ID="rptLoad" runat="server">
    <ItemTemplate>
    <div class="col-12 col-lg-2">
        <div class="single-blog-post">
            <div class="post-thumb">
                <a href="trangchitiet.aspx?id=<%# Eval("ID") %>"> <asp:Image ID="ha" runat="server" ImageUrl='<%# Eval("HinhDaiDien") %>' alt="" /> </a>
            </div>
            <div class="post-data" >
                <a href="trangchitiet.aspx?id=<%# Eval("ID") %>" class="post-title">
                    <h8 style="color:red"><%# Eval("TieuDe") %></h8>
                </a>
                <div class="post-meta">
                    <div class="post-date"><a href="#"  style="font-size:10px">Ngày tạo: <%# Eval("NgayTao") %></a></div>
                </div>
            </div>
        </div>
    </div>
           </ItemTemplate>
</asp:Repeater>
</div>