<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="PersonelGuncelle.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.PersonelGüncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="section">
        <div class="section-header">
            <h1>Personel Güncelleme</h1>

        </div>
        <div class="section-body">
            <div>
                <div class="card">

                    <div class="card-body">
                        <%--<form runat="server">--%>

                            <div class="form-group">

                                <b>Resim</b>
                                <asp:Image ID="Image1" runat="server" Class="form-control resim" Height="200px" Width="200px" />

                            </div>

                            <div class="form-group">
                                <asp:FileUpload ID="FileUpload1" ClientIDMode="Static" CssClass="form-group" runat="server" onchange="$('.resim')[0].src=window.URL.createObjectURL(this.files[0])" />

                            </div>
                            <div class="form-group">
                                <b>Personel Adı:</b><asp:TextBox ID="txtAd" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Personel Soyadı:</b><asp:TextBox ID="txtSoyad" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Birimi:</b><asp:DropDownList ID="DropdownBirim" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <b>Personel Telefon-1:</b><asp:TextBox ID="txtTel1" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Personel Telefon-2:</b><asp:TextBox ID="txtTel2" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Personel Email:</b><asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Personel Adres:</b><asp:TextBox ID="txtAdres" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Maaş:</b><asp:TextBox ID="txtMaas" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Açıklama:</b><asp:TextBox ID="txtAciklama" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Çalışma Durumu:</b><br />
                                <br />
                                <div>
                                    <asp:RadioButton ID="RadioAktif" GroupName="isactive" runat="server" Text="Aktif" />
                                    <br />
                                    <asp:RadioButton ID="RadioPasif" GroupName="isactive" runat="server" Text="Pasif" />
                                </div>

                            </div>
                            <div class="form-group">
                                <b>Giriş Tarihi:</b><asp:TextBox ID="txtTarih" type="date" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="btnGuncelle_Click" />

                            </div>

                        <%--</form>--%>
                    </div>
                </div>
            </div>
        </div>

    </section>
</asp:Content>
