<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h2>Vinos:</h2>
        <table border="2">
          <tr bgcolor="#9acd32">
            <th>Nombre</th>
            <th>Precio</th>
          </tr>
          <xsl:for-each select="viños/viño">
            <tr>
              <xsl:choose>
                <xsl:when test="number(prezo) &lt;= 10">
                  <xsl:attribute name="style">color:green;</xsl:attribute>
                </xsl:when>
                <xsl:when test="number(prezo) &gt;= 30">
                  <xsl:attribute name="style">color:red;</xsl:attribute>
                </xsl:when>
              </xsl:choose>
              <td><xsl:value-of select="nome"/></td>
              <td>
                <xsl:value-of select="prezo"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
