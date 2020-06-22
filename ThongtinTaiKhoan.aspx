<%@ Page Title="Thông tin tài khoản" Language="C#" MasterPageFile="~/LayoutChung.Master" AutoEventWireup="true" CodeBehind="ThongtinTaiKhoan.aspx.cs" Inherits="BigSchool.ThongtinTaiKhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <asp:Panel ID="pnTimKiem" runat="server">
                <div class="panel-body">
                    <div class="panel panel-default">
                        <div class="panel-heading" style="line-height: 35px;">
                            <b>Danh sách khóa học đăng ký</b>
                        </div>
                        <div class="panel-body">
                            <asp:GridView ID="GVDK" runat="server" AutoGenerateColumns="false" OnRowCommand="GVDK_RowCommand"
                                EmptyDataText="Không có dữ liệu nào" class="table table-striped table-bordered table-hover">
                                <Columns>
                                     <asp:TemplateField HeaderText="Hủy đăng ký" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="30px"
                                        ItemStyle-Width="30px">
                                        <ItemTemplate>
                                           <asp:LinkButton ID="lbtDangKy" runat="server" ToolTip="Đăng ký" CommandArgument='<%#Eval("ID")%>'
                                                Text='Hủy đăng ký' CommandName="dangky" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:BoundField DataField="ChuDe" HeaderText="Chủ đề" />
                                    <asp:BoundField DataField="DiaDiem" HeaderText="Địa điểm" />
                                    <asp:BoundField DataField="HoTen" HeaderText="Giảng viên" />
                                    <asp:BoundField DataField="NoiDung" HeaderText="Nội dung" />
                                    <asp:BoundField DataField="KinhPhi" HeaderText="Học phí" />
                                    <asp:BoundField DataField="TuNgay" HeaderText="Ngày bắt đầu" />
                                    <asp:BoundField DataField="DenNgay" HeaderText="Ngày kết thúc" />
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#000066" Font-Bold="True" Font-Size="11px"
                                    HorizontalAlign="Right" />
                                <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" Height="30px" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" ForeColor="#000066" Height="30px" Font-Size="12px" />
                                <SelectedRowStyle BackColor="#afe4ed" Font-Bold="false" />
                            </asp:GridView>
                        </div>
                      
                    </div>
                </div>
         <div class="panel-body">
                    <div class="panel panel-default">
                        <div class="panel-heading" style="line-height: 35px;">
                            <b>Danh sách theo dõi giảng viên</b>
                        </div>
                        <div class="panel-body">
                            <asp:GridView ID="GVTD" runat="server" AutoGenerateColumns="false" OnRowCommand="GVTD_RowCommand"
                                EmptyDataText="Không có dữ liệu nào" class="table table-striped table-bordered table-hover">
                                <Columns>
                                     <asp:TemplateField HeaderText="Bỏ theo dõi" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="30px"
                                        ItemStyle-Width="30px">
                                        <ItemTemplate>
                                           <asp:LinkButton ID="lbtDangKy" runat="server" ToolTip="Đăng ký" CommandArgument='<%#Eval("ID")%>'
                                                Text='Bỏ theo dõi' CommandName="dangky" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="HoTen" HeaderText="Họ tên" />
                                    <asp:BoundField DataField="NgaySinh" HeaderText="Ngày sinh" />
                                    <asp:BoundField DataField="GioiTinh" HeaderText="Giới tính" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" />
                                    <asp:BoundField DataField="DienThoai" HeaderText="Điện thoại" />
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#000066" Font-Bold="True" Font-Size="11px"
                                    HorizontalAlign="Right" />
                                <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" Height="30px" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" ForeColor="#000066" Height="30px" Font-Size="12px" />
                                <SelectedRowStyle BackColor="#afe4ed" Font-Bold="false" />
                            </asp:GridView>
                        </div>
                      
                    </div>
                </div>
            </asp:Panel>
</asp:Content>
