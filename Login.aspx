<%@ Page Title="Đăng nhập" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BigSchool.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <div class="row p-b-30">
        <div class="col-3">

        </div>
        <div class="col-6">
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text bg-success text-white" id="basic-addon1"><i class="ti-user"></i></span>
                </div>
                <asp:TextBox ID="txtUserName" runat="server" class="form-control form-control-lg" placeholder="Tên đăng nhập" aria-describedby="basic-addon1"></asp:TextBox>
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text bg-warning text-white" id="basic-addon2"><i class="ti-pencil"></i></span>
                </div>
                <asp:TextBox ID="txtPassword" runat="server" class="form-control form-control-lg" aria-label="Password" placeholder="Mật khẩu" aria-describedby="basic-addon1" TextMode="Password"></asp:TextBox>
            </div>
        </div>
         <div class="col-3">

        </div>
    </div>
    <div class="row border-top border-secondary">
         <div class="col-3">

        </div>
        <div class="col-6">
            <div class="form-group">
                <div class="p-t-20">
                    <button class="btn btn-info" id="to-recover" type="button"><i class="fa fa-lock m-r-5"></i>Quên mật khẩu?</button>
                    <asp:Button ID="btnDangNhap" runat="server" Text="Đăng nhập" class="btn btn-success float-right" OnClick="btnDangNhap_Click" />
                </div>
            </div>
        </div>
         <div class="col-3">

        </div>
    </div>
</asp:Content>
