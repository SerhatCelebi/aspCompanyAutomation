<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="GridViewList.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.GridViewList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="section">
        <div class="section-header">
            <h1>Personel Listesi</h1>

        </div>
        <div class="section-body">
            <div>
                <div class="card">
                    <div class="card-header">
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">



                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="878px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:TemplateField HeaderText="ID">
                                        <ItemTemplate>
                                            <%# Eval("ID") %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Birimi">
                                        <ItemTemplate>
                                        <%# Eval("Birimler.Birim") %>

                                        </ItemTemplate>
                                        </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Adı">
                                        <ItemTemplate>
                                        <%# Eval("Adi") %>

                                        </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Soyadı">
                                        <ItemTemplate>
                                        <%# Eval("Soyadi") %>

                                        </ItemTemplate>
                                    </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Telefon">
                                        <ItemTemplate>
                                        <%# Eval("Tel_1") %>

                                        </ItemTemplate>
                                    </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Maaşı">
                                        <ItemTemplate>
                                        <%# Eval("Maasi") %>

                                        </ItemTemplate>
                                    </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Giriş Tarihi">
                                        <ItemTemplate>
                                        <%#TarihFormati(DateTime.Parse(Eval("GirisTarih").ToString())) %>

                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>


                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <nav class="d-inline-block">
                            <ul class="pagination mb-0">
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            
            
            <asp:Button ID="btnExcelExport" runat="server" CssClass="btn btn-sm btn-secondary" OnClick="btnExcelExport_Click"  Text="Excel Export" />

            <br />
            <br />

        </div>

    </section>

</asp:Content>
