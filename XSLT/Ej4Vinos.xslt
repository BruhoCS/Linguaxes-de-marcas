<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>My CD Collection</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Title</th>
        <th>Artist</th>
      </tr>
<xsl:for-each select="viños/viño">
<xsl:if test="prezo > 9">
      <tr>
        <td><xsl:value-of select="nome"/></td>
        <td><xsl:value-of select="prezo"/></td>
      </tr>
</xsl:if>
</xsl:for-each> 
   </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
