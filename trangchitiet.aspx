<%@ Page Title="Trang chi tiết" Language="C#" MasterPageFile="~/LayoutChung.Master" AutoEventWireup="true" CodeBehind="trangchitiet.aspx.cs" Inherits="BigSchool.trangchitiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <asp:Repeater ID="rptChiTiet" runat="server">
        <ItemTemplate>
            <h3 style="color:red"><%# Eval("ChuDe") %></h3>
            <p style="text-align:right">
                Cập nhật: <%# Eval("NgayTao") %>
            </p>
           <p style="text-align:justify">
                Địa điểm: <%#Eval("DiaDiem") %>
           </p>
             <p style="text-align:justify">
               Nội dung: <%#Eval("NoiDung") %>
           </p>
             <p style="text-align:justify">
                Kinh phí: <%#Eval("KinhPhi") %>
           </p>
             <p style="text-align:justify">
                Giảng viên: <%#Eval("GiangVien") %>
           </p>
             <p style="text-align:justify">
              Ngày bắt đầu:  <%#Eval("TuNgay") %>
           </p>
             <p style="text-align:justify">
                Ngày kết thúc: <%#Eval("DenNgay") %>
           </p>
            
        </ItemTemplate>
    </asp:Repeater>
    <asp:Button ID="btnDangKy" runat="server" OnClick="btnDangKy_Click" CssClass="btn btn-primary" Text="Đăng ký"></asp:Button>
</asp:Content>
