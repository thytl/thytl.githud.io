<%@ Page Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" Title="Untitled Page" %>

<%@ Register src="DefaultHeader.ascx" tagname="DefaultHeader" tagprefix="uc1" %>
<%@ Register src="DefaultMenu.ascx" tagname="DefaultMenu" tagprefix="uc2" %>
<%@ Register src="DefaultSidebar1.ascx" tagname="DefaultSidebar1" tagprefix="uc3" %>

<%@ Register src="design/UC_chayhinh.ascx" tagname="UC_chayhinh" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 102px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">

    <uc1:DefaultHeader ID="DefaultHeader1" runat="server" />

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">
    <uc2:DefaultMenu ID="DefaultMenu1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">
<div>
            <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="100%" height="500px" id="tech" align="middle">
		        <param name="allowScriptAccess" value="sameDomain" />
		        <param name="movie" value="Flash/swf.swf?xml_path=Flash/slides.xml" />
		        <param name="quality" value="high" />
		        <embed src="Flash/swf.swf?xml_path=Flash/slides.xml" quality="high" width="500px" height="500px" name="tech" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
	        </object>
            </div>
            <div>
            <img src="images/qc.JPG" width="590px" />
                
            </div><br />
            <div>               
                <marquee onmouseover="this.stop();" onmouseout="this.start();" direction="left" 
                    scrollamount="5" class="style1">
                   <ul>
						<img src="imageQCao/19SonyEricssonG900.jpg" width="100px" height="100px" />
						<img src="imageQCao/danhba.jpeg" width="100px" height="100px" />
						<img src="imageQCao/9livetheexperience.jpg" width="100px" height="100px" />
						<img src="imageQCao/4NokiaG14.jpg" width="100px" height="100px" />
						<img src="imageQCao/19SonyEricssonG900.jpg" width="100px" height="100px" />
						<img src="imageQCao/22MobileAdStyleWallpaper.jpg" width="100px" height="100px" />
						<img src="imageQCao/fabook.gif" width="100px" height="100px" />
						<img src="imageQCao/qc_didong.gif" width="100px" height="100px" />
						<img src="imageQCao/25FreshiPhone.jpg" width="100px" height="100px" />
						<img src="imageQCao/28IPhone3Warmversion.jpg" width="100px" height="100px" />
					</ul></marquee>
                	</div> 
    <br />
    <div>
    
        </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
    <uc3:DefaultSidebar1 ID="DefaultSidebar11" runat="server" />
</asp:Content>

