<%@ Page Title="Home Page" Async="true" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SampleClientWebForm._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Daftar Barang</h2>
    <br />
    <asp:Label ID="lblDate1" runat="server" />
    <hr />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label ID="lblDate2" runat="server" />
            <asp:Button Text="Refresh" ID="btnRefresh" runat="server" />
        </ContentTemplate>
    </asp:UpdatePanel>

     <asp:GridView runat="server" ID="gvBarang" ItemType="BO.Barang" 
       DataKeyNames="KodeBarang" SelectMethod="gvBarang_GetData"></asp:GridView>
</asp:Content>
