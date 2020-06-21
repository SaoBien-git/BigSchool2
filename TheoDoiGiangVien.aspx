<%@ Page Title="Theo dõi giảng viên" Language="C#" MasterPageFile="~/LayoutChung.Master" AutoEventWireup="true" CodeBehind="TheoDoiGiangVien.aspx.cs" Inherits="BigSchool.TheoDoiGiangVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

      <asp:UpdatePanel ID="up5" runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading" style="background-color: antiquewhite">
                            Thông tin giảng viên
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                </div>
            </div>
            <asp:Panel ID="pnTimKiem" runat="server">
                <div class="panel-body">
                    <div class="panel panel-default">
                        <div class="panel-heading" style="line-height: 35px;">
                            <b>Danh sách các giảng viên</b>
                        </div>
                        <div class="row">
                             <div class="col-lg-3">
                                <span style="margin-left: 5px;">Giảng viên</span>
                                <asp:DropDownList runat="server" ID="dlGiangVien" Width="98%" CssClass="dropdownselect2"></asp:DropDownList>
                            </div>
                            <div class="col-lg-3">
                                <br />
                                <asp:Button ID="btnTimKiem" runat="server" OnClick="btnTimKiem_Click" CssClass="btn btn-primary" Text="Tìm kiếm"></asp:Button>
                            </div>
                        </div>
                        <div class="panel-body">
                            <asp:GridView ID="GV" runat="server" AutoGenerateColumns="false" OnRowCommand="GV_RowCommand"
                                EmptyDataText="Không có dữ liệu nào" class="table table-striped table-bordered table-hover">
                                <Columns>
                                    <asp:TemplateField HeaderText="Theo dõi" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="30px"
                                        ItemStyle-Width="30px">
                                        <ItemTemplate>
                                           <asp:LinkButton ID="lbtDangKy" runat="server" ToolTip="Theo dõi" CommandArgument='<%#Eval("ID")%>'
                                                Text='Đăng ký' CommandName="dangky" />
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
            <asp:HiddenField ID="hdID" runat="server" />
            <asp:HiddenField ID="hdChiTiet" runat="server" />
            <asp:HiddenField ID="hdPage" runat="server" />
            <asp:HiddenField ID="hdQuanLy" runat="server" />
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
