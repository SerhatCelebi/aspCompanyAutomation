<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YeniKullanici.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.YeniKullanici" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Yeni Kullanıcı</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />
    <link href="/Content/style.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
</head>
<body style="background-color: #eaeaea;">
    <form id="form1" runat="server">
        <div class="container" style="width: 50%; background-color: white; margin-top: 10px; border-radius: 10px;">




            <div class="form-group">

                <h2 class="text-center">Yeni Kullanıcı</h2>
                <br />

            </div>
            <div class="form-group">
                <asp:Image ID="Image1" runat="server" class="form-control resim" Height="200px" Width="200px" />
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
                <b>Sifre Tekrar</b><asp:TextBox ID="txtSifreTekrar" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <b>Email</b><asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnOlustur" runat="server" Text="Oluştur" CssClass="btn btn-danger" onclick="btnOlustur_Click" />
            </div>



        </div>



    </form>
</body>
</html>
