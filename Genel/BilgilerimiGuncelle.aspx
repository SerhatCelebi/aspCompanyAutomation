<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BilgilerimiGuncelle.aspx.cs" Inherits="ASPNETSirketOtomasyonu.Genel.BilgilerimiGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">


        <div class="form-group">

            <b>Resim</b>
            <asp:Image ID="Image1" runat="server" Class="form-control resim" Height="200px" Width="200px" />

        </div>

        <div class="form-group">
            <asp:FileUpload ID="FileUpload1" ClientIDMode="Static" CssClass="form-group" runat="server" onchange="$('.resim')[0].src=window.URL.createObjectURL(this.files[0])" />

        </div>
        <div class="form-group">
            <b>Adı</b><asp:TextBox ID="txtAdi" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <b>Soyadı</b><asp:TextBox ID="txtSoyadi" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <b>Kullanıcı Adı</b><asp:TextBox ID="txtKullaniciAdi" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <b>Sifre</b><asp:TextBox ID="txtSifre" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <b>Email</b><asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Button ID="btnGuncelle" runat="server" Text="Değiştir" CssClass="btn btn-success" OnClick="btnGuncelle_Click" />
        </div>



    </div>

</asp:Content>
