<%@ Page Title="Quản lý menu" Language="C#" MasterPageFile="~/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="QuanLyMenu.aspx.cs" Inherits="BigSchool.QuanLyMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/demo.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="card mb-3" style="background-color:white">
                        <div class="card-header" style="background-color: antiquewhite; font-weight: bold; color: blue">
                            Thông tin menu
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <span style="margin-left: 5px;">Tên meu</span>
                                        <asp:TextBox ID="txtTenMenu" runat="server" CssClass="form-control " data-toggle="tooltip" Enabled="true"
                                            placeholder="Tên menu" data-original-title="Tên menu"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <span style="margin-left: 5px;">Menu cha</span>
                                         <asp:ImageButton ID="img" runat="server" ImageUrl="~/assets/images/refresh.png" OnClick="img_Click" Height="17px" Width="20px" />
                                        <asp:DropDownList runat="server" ID="dlParentID" Width="98%" CssClass="dropdownselect2" DataValueField="ID" DataTextField="TenMenu"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="form-group">
                                        <span style="margin-left: 5px;">Link</span>
                                        <asp:TextBox ID="txtLink" runat="server" CssClass="form-control" placeholder="Link" Enabled="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="form-group">
                                        <span style="margin-left: 5px;">Vị trí</span>
                                        <asp:TextBox ID="txtViTri" runat="server" CssClass="form-control" placeholder="Vị trí" Enabled="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="form-group">
                                        <span style="margin-left: 5px;">Trạng thái</span><br />
                                        <label class="tgl" style="font-size: 13px">
                                            <asp:CheckBox ID="ckTrangThai" AutoPostBack="true"
                                                Checked="false" runat="server" />
                                            <span data-on="Kích hoạt" data-off="Vô hiệu hóa"></span>
                                        </label>
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
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="card mb-3" style="background-color:white">
                        <div class="card-header" style="background-color: antiquewhite; font-weight: bold; color: blue">
                            Danh sách menu
                        </div>
                        <div class="card-body">
                            <div class="row" id="div1" runat="server" visible="true">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <asp:Label ID="lbl1" runat="server">Tên menu</asp:Label><br />
                                        <asp:TextBox ID="txtTenMenuLoc" runat="server" CssClass="form-control" placeholder="Tên menu" Enabled="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <asp:Label ID="Label1" runat="server"></asp:Label><br />
                                        <asp:Button ID="btnTimKiem" runat="server" OnClick="btnTimKiem_Click" CssClass="btn btn-success" Text="Tìm kiếm" />
                                    </div>
                                </div>
                            </div>
                            <div class="card-body" style="overflow: auto; overflow: auto">
                                <asp:GridView ID="GV" runat="server" AutoGenerateColumns="false" OnRowCommand="GV_RowCommand" Width="1820px" ShowFooter="true"
                                    EmptyDataText="Không có dữ liệu nào" class="table table-striped table-bordered table-hover" Font-Names="Times new Roman" HeaderStyle-Font-Size="13px" BorderColor="#663300">
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

                                        <asp:BoundField DataField="TenMenu" HeaderText="Tên menu" />
                                        <asp:BoundField DataField="TenMeNuCha" HeaderText="Menu cha" ItemStyle-HorizontalAlign="Center" />
                                        <asp:BoundField DataField="Link" HeaderText="Link" ItemStyle-HorizontalAlign="Center" />
                                        <asp:BoundField DataField="ViTri" HeaderText="Vị trí" ItemStyle-HorizontalAlign="Center" />
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
