<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="ASPNETSirketOtomasyonu.Genel.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>İletişim Sayfası</h2>
    <div>
        <div class="form-group" style="float: left; width: 47%">
            <b>Adı Soyadı</b><asp:TextBox ID="txtAdiSoyadi" CssClass="form-control" PlaceHolder="Adınız Soyadınız"  runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator Cssclass="text-danger" ControlToValidate="txtAdiSoyadi" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ad soyad alanı boş geçilemez." ValidationGroup="iletisim"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group" style="float: right; width: 47%">
            <b>E-mail</b><asp:TextBox ID="txtEmail" CssClass="form-control" PlaceHolder="E-mail Adresiniz"  runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator Cssclass="text-danger" ControlToValidate="txtEmail" ID="RequiredFieldValidator2" runat="server" ErrorMessage="E-mail alanı boş geçilemez." ValidationGroup="iletisim"></asp:RequiredFieldValidator>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="form-group">
            <b>Başlık</b><asp:TextBox ID="txtBaslik" CssClass="form-control" PlaceHolder="Başlık"  runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator Cssclass="text-danger" ControlToValidate="txtBaslik" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Başlık alanı boş geçilemez." ValidationGroup="iletisim"></asp:RequiredFieldValidator>
        </div>
        <br />

        <div class="form-group">
            <b>Mesaj</b><asp:TextBox ID="txtMesaj" CssClass="form-control" PlaceHolder="Mesajınız"  runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator Cssclass="text-danger" ControlToValidate="txtMesaj" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mesaj alanı boş geçilemez." ValidationGroup="iletisim"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <asp:Button ID="btnGonder" runat="server" Text="Gönder" CssClass="btn btn-primary" OnClick="btnGonder_Click" ValidationGroup="iletisim" />
        </div>
    </div>
    <div>
        
            <div class="form-group">
                <b>Şirket Adi:</b><asp:Label ID="lblSirketAdi" runat="server" Text="Label"></asp:Label>

            </div>
            <div class="form-group">
                <b>Telefon-1:</b><asp:Label ID="lblTel1" runat="server" Text="Label"></asp:Label>

            </div>
            <div class="form-group">
                <b>Telefon-2:</b><asp:Label ID="lblTel2" runat="server" Text="Label"></asp:Label>

            </div>
            <div class="form-group">
                <b>Fax:</b><asp:Label ID="lblFax" runat="server" Text="Label"></asp:Label>

            </div>
            <div class="form-group">
                <b>E-mail:</b><asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>

            </div>
            <div class="form-group">
                <b>Adres:</b><asp:Label ID="lblAdres" runat="server" Text="Label"></asp:Label>

            </div>
            <div class="form-group">
                <b>Kuruluş Tarihi</b><asp:Label ID="lblTarih" runat="server" Text="Label"></asp:Label>

            </div>
       


    </div>
</asp:Content>
