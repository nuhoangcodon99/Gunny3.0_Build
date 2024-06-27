<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="RequestAdmin.aspx.cs" Inherits="WebApplication1.Admin.RequestAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" Text="Click this link to Refresh Top User"></asp:Label>
         <asp:HyperLink  Target="_blank" ID="HyperLink1" runat="server">Click</asp:HyperLink>
    </p>
    <p>
       
    </p>
</asp:Content>
