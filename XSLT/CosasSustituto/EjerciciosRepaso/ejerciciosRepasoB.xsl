<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
<body>
<h1>Library Catalog</h1>

  <table border="4">
    <tr>
      <th>Title</th>
      <th>Author</th>
      <th>Genre</th>
      <th>Price</th>
      <th>Availability</th>
      <th>Reviews</th>
    </tr>
    <xsl:for-each select="library/book">
    <tr>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="author"/></td>
        <td><xsl:value-of select="genre"/></td>
        <td>$<xsl:value-of select="price"/></td>
          <xsl:choose>
          <xsl:when test="available='true'">
        <td style="color:green">Available</td>
        </xsl:when>
        <xsl:otherwise>
           <td style="color:red">Out of Stock</td>
        </xsl:otherwise>
    </xsl:choose>
        <td>
          <ul>
            <li><xsl:value-of select="reviews"/></li>
        </ul>
          </td>
        </tr>
      </xsl:for-each>
</table>
</body>  
  </html>
  </xsl:template>
</xsl:stylesheet>
