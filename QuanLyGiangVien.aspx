<%@ Page Title="Quản lý giảng viên" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="QuanLyGiangVien.aspx.cs" Inherits="BigSchool.QuanLyGiangVien" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="card mb-3" style="background-color: white">
                        <div class="card-header" style="background-color: antiquewhite; font-weight: bold; color: blue">
                            Thông tin giảng viên
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <span style="margin-left: 5px;">Mã giảng viên</span>
                                        <asp:TextBox ID="txtMaGiangVien" runat="server" CssClass="form-control" placeholder="Mã giảng viên"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <span style="margin-left: 5px;">Họ và tên</span>
                                        <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control" placeholder="Họ tên"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <span style="margin-left: 5px;">Ngày sinh</span><br />
                                        <asp:TextBox ID="txtNgaySinh" runat="server" CssClass="form-control " data-toggle="tooltip"
                                            placeholder="Ngày sinh" data-original-title="Nhập ngày sinh"
                                            MaxLength="10"></asp:TextBox>
                                        <ajaxToolkit:CalendarExtender PopupPosition="BottomLeft" ID="CalendarExtender1" runat="server"
                                            TargetControlID="txtNgaySinh" Format="dd/MM/yyyy" />
                                        <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Custom,Numbers"
                                            TargetControlID="txtNgaySinh" ValidChars="/-" />
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <span style="margin-left: 5px;">Giới tính</span>
                                        <asp:DropDownList runat="server" ID="dlGioiTinh" Width="98%" CssClass="dropdownselect2">
                                            <asp:ListItem Value="">--Chọn giới tính--</asp:ListItem>
                                            <asp:ListItem Value="Nam">Nam</asp:ListItem>
                                            <asp:ListItem Value="Nữ">Nữ</asp:ListItem>
                                            <asp:ListItem Value="Giới tính khác">Giới tính khác</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <span style="margin-left: 5px;">Email</span>
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="regEmail" ControlToValidate="txtEmail" Text="(Invalid email)" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" />
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <span style="margin-left: 5px;">Số điện thoại</span>
                                    <asp:TextBox ID="txtDienThoai" runat="server" class="form-control" placeholder="Điện thoại"></asp:TextBox>
                                    <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="Numbers"
                                        TargetControlID="txtDienThoai" />
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="form-group">
                                <span style="margin-left: 5px;">Địa chỉ</span>
                                <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control" placeholder="Địa chỉ"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <span class="btn-group" style="margin-bottom: 5px; top: 5px; left: 0px;">
                            <asp:Button ID="btnLuu" runat="server" OnClick="btnLuu_Click" CssClass="btn btn-success" Text="Lưu lại" ValidationGroup="Luu" />
                            <asp:Button ID="btnNhapMoi" runat="server" OnClick="btnNhapMoi_Click" CssClass="btn btn-primary" Text="Nhập mới" />
                        </span>
                    </div>
                </div>
                <!-- /.row (nested) -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="card mb-3" style="background-color: white">
                        <div class="card-header" style="background-color: antiquewhite; font-weight: bold; color: blue">
                            DANH SÁCH NHÂN VIÊN
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="row">
                                        <div class="col-lg-3">
                                            <div class="form-group">
                                                <asp:DropDownList runat="server" ID="dlGiangVienLoc" Width="98%" CssClass="dropdownselect2"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="form-group">
                                                <asp:Button ID="btnTimKiem" runat="server" OnClick="btnTimKiem_Click" CssClass="btn btn-primary" Text="Tìm kiếm" Width="28%"></asp:Button>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="Panel-body" style="overflow: auto; overflow: auto">
                            <asp:GridView ID="GV" runat="server" AutoGenerateColumns="false" OnRowCommand="GV_RowCommand" Width="1820px"
                                EmptyDataText="Không có dữ liệu nào" class="table table-striped table-bordered table-hover" Font-Names="Times new Roman" HeaderStyle-Font-Size="13px">
                                <Columns>
                                    <asp:TemplateField HeaderText="Sửa" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="30px"
                                        ItemStyle-Width="30px">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="lbSua" runat="server" Width="15px" Height="17px" ImageUrl="~/assets/images/edit.png"
                                                CommandArgument='<%#Eval("ID")%>' ToolTip="Sửa" Text="Sửa"
                                                CommandName="select" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Xóa" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="30px"
                                        ItemStyle-Width="30px">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="lbXoa" runat="server" Width="15px" Height="17px" ImageUrl="~/assets/images/delete.png"
                                                OnClientClick="return confirm('Bạn chắc chắn muốn xóa ?')" CommandArgument='<%#Eval("ID")%>'
                                                Text="Xóa" CommandName="del" ToolTip="Xóa" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="MaGiangVien" HeaderText="Mã giảng viên" />
                                    <asp:BoundField DataField="HoTen" HeaderText="Họ tên" />
                                    <asp:BoundField DataField="NgaySinh" HeaderText="Ngày sinh" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:dd/MM/yyyy}" />
                                    <asp:BoundField DataField="GioiTinh" HeaderText="Giới tính" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ thường trú" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" />
                                    <asp:BoundField DataField="DienThoai" HeaderText="Điện thoại" ItemStyle-HorizontalAlign="Center" />
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#000066" Font-Bold="True" Font-Size="11px"
                                    HorizontalAlign="Right" />
                                <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" Height="30px" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" ForeColor="#000066" Height="30px" Font-Size="12px" />
                                <SelectedRowStyle BackColor="#afe4ed" Font-Bold="false" />
                            </asp:GridView>
                        </div>
                        <div style="margin: 5px;" class="btn-group">
                            <asp:Button ID="btnFirst" runat="server" Text="Đầu" CssClass="btn btn-warning" OnClick="btnFirst_Click" />
                            <asp:Button ID="btnPre" runat="server" Text="Trước" CssClass="btn btn-primary" OnClick="btnPre_Click" />
                            <asp:Button ID="btnNext" runat="server" Text="Sau" CssClass="btn btn-warning" OnClick="btnNext_Click" />
                        </div>
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <asp:HiddenField ID="hdID" runat="server" />
            <asp:HiddenField ID="hdPage" runat="server" />
        </ContentTemplate>
        <Triggers>
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>


