<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
           <h1>Lista de Sitios Web Relevantes</h1> 
                <ol>
                 <xsl:for-each select="datos/elemento">
                    <li><a href="{url}"><xsl:value-of select="nombre"/></a>-<xsl:value-of select="descripcion"/></li>
                   </xsl:for-each> 
                </ol>
           
           <h1>Tabla de Sitios Web Relevantes</h1>
                  <table border="1">
                       <tr>
                          <th>Nombre</th>
                          <th>Descripcion</th>
                          <th>URL</th>
                       </tr> 
                        <xsl:for-each select="datos/elemento">
                       <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="descripcion"/></td>
                            <td><xsl:value-of select="url"/></td>
                       </tr>
                       </xsl:for-each>
                  </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
