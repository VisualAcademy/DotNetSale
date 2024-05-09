<%@ Page Title="주문 조회" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="OrderSearch.aspx.cs" Inherits="DotNetSale.Web.OrderSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContet" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="text-center" style="height: 50px;">
        <h3>주문 조회(Order Search)</h3>
    </div>

    <%--주문 조회 폼--%>
    <table style="width: 100%;" class="table-bordered">
        <tr>
            <td style="width: 120px; text-align: right;">
                <asp:Label ID="lblOrderDate" runat="server" Text="Order Date " Width="120px" CssClass="control-label"></asp:Label>
            </td>
            <td style="width: 180px;">
                <asp:TextBox ID="txtOrderDateStart" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td style="width: 20px;" class="text-center">~
            </td>
            <td style="width: 180px;">
                <asp:TextBox ID="txtOrderDateEnd" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td style="width: 180px;" class="text-center" rowspan="3">
                <asp:Button ID="btnOrderSearch" runat="server" Text="Order Search" CssClass="btn btn-primary form-control" Width="120px" Height="80px" />
            </td>
            <td class="text-center" rowspan="3">
                <asp:Button ID="btnCreateOrder" runat="server" Text="Create" CssClass="btn btn-primary form-control" Width="120px" />
            </td>
        </tr>
        <tr>
            <td style="width: 120px; text-align: right;">
                <asp:Label ID="lblItemCode" runat="server" Text="Item Code" Width="120px" CssClass="control-label"></asp:Label>
            </td>
            <td style="width: 380px;" colspan="3">
                <asp:TextBox ID="txtItemCode" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 120px; text-align: right;">
                <asp:Label ID="lblItemDescription" runat="server" Text="Item Desc" Width="120px" CssClass="control-label"></asp:Label>
            </td>
            <td style="width: 380px;" colspan="3">
                <asp:TextBox ID="txtItemDescription" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
    </table>
    <%--주문 조회 폼--%>

    <%--주문 조회 리스트--%>
    <asp:GridView ID="ctlOrderList" runat="server"></asp:GridView>
    <%--주문 조회 리스트--%>
</asp:Content>
