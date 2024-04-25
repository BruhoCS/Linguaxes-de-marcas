<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
     <body>
          <h1>Inventario de productos</h1>
          <table border="4">
     <tr>
        <th>Nombre</th>
        <th>Marca</th>
         <th>Categoria</th>
          <th>Precio</th>
           <th>Disponibilidad</th>
     </tr>
          <xsl:for-each select="inventario/item">
      <tr>
          <td><xsl:value-of select="name"/></td>
          <td><xsl:value-of select="brand"/></td>
          <td><xsl:value-of select="category"/></td>
          <td><xsl:value-of select="price"/></td>
          <td>
          <xsl:choose>
                    <xsl:when test="available='true'">
                        <p style="color:#30ff06;">Disponible</p>
                    </xsl:when>
                  <xsl:otherwise>
                  <p style="color:#ff0606;">Agotado</p>
                  </xsl:otherwise>
                  </xsl:choose>
          </td>
     </tr>
          </xsl:for-each>
          </table>
     </body> 
  </html>
  </xsl:template>
</xsl:stylesheet>
