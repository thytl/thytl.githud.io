<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DefaultSidebar1.ascx.cs" Inherits="Sidebar1" %>
<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultVerticalMenu" Src="DefaultVerticalMenu.ascx" %>


<p>
    <br />
</p>

<art:DefaultVerticalMenu ID="DefaultVMenuContent" runat="server" />
                  <artisteer:Block ID="NewsletterBlock" runat="server"><ContentTemplate><div><span class="art-button-wrapper">
                  </span></div></ContentTemplate></artisteer:Block><artisteer:Block ID="HighlightsBlock" runat="server"><ContentTemplate><div>
                            <ul><li><b>Jun 14, 2008</b>
                            <p>Aliquam sit amet felis. Mauris semper,
                                  velit semper laoreet dictum, quam
                                  diam dictum urna, nec placerat elit
                                  nisl in quam. Etiam augue pede,
                                  molestie eget, rhoncus at, convallis
                                  ut, eros. Aliquam pharetra.<br />
                                  <a href="#">Read more...</a>
                            </p></li></ul>
                            <ul><li><b>Aug 24, 2008</b>
                            <p>Aliquam sit amet felis. Mauris semper,
                                  velit semper laoreet dictum, quam
                                  diam dictum urna, nec placerat elit
                                  nisl in quam. Etiam augue pede,
                                  molestie eget, rhoncus at, convallis
                                  ut, eros. Aliquam pharetra.<br />
                                  <a href="#">Read more...</a>
                            </p></li></ul>
                            </div>
             </ContentTemplate></artisteer:Block><artisteer:Block ID="ContactInformationBlock" runat="server"><ContentTemplate><div>
                <img src="images/contact.jpg" alt="an image" style="margin: 0 auto;display:block;width:95%" />
          <br />
          <b>Company Co.</b><br />
          Las Vegas, NV 12345<br />
          Email: <a href="mailto:info@company.com">info@company.com</a><br />
          <br />
          Phone: (123) 456-7890 <br />
          Fax: (123) 456-7890
          </div>
             </ContentTemplate></artisteer:Block>
