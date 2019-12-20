<%@ Page Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="danhba.aspx.cs" Inherits="danhba" Title="Untitled Page" %>

<%@ Register src="DefaultSidebar1.ascx" tagname="DefaultSidebar1" tagprefix="uc1" %>
<%@ Register src="DefaultMenu.ascx" tagname="DefaultMenu" tagprefix="uc2" %>
<%@ Register src="DefaultHeader.ascx" tagname="DefaultHeader" tagprefix="uc3" %>

<%@ Register src="design/UC_danhba.ascx" tagname="UC_danhba" tagprefix="uc4" %>

<%@ Register src="design/Danhba.ascx" tagname="Danhba" tagprefix="uc5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
    <uc3:DefaultHeader ID="DefaultHeader1" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">
    <uc2:DefaultMenu ID="DefaultMenu1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">
 
    
 
    <uc4:UC_danhba ID="UC_danhba1" runat="server" />
 
    
 
 </asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
    <uc1:DefaultSidebar1 ID="DefaultSidebar11" runat="server" />
</asp:Content>

