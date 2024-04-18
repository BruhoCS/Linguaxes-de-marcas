<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
    <body>
      <h1>Lista de Produtos Disponibles</h1>
      <xsl:for-each select="productos">
      
      
          <h2><xsl:value-of select="nombre"/></h2>
          <p><xsl:value-of select="descripcion"/></p>
          
            <xsl:choose>
                  <xsl:when test="disponible='true'">
                       <p color="green"><xsl:value-of select="disponible"></xsl:value-of></p> 
                  </xsl:when>
                  <xsl:otherwise>
                  <p color="red"><xsl:value-of select="disponible"></xsl:value-of></p>
                  </xsl:otherwise>
            </xsl:choose>
            
            <h3>Caracteristicas</h3>
            <ol><xsl:value-of select="caracteristicas"/></ol>
          
            <h3>Comentarios</h3>
            <ol><xsl:value-of select="usuario"/>:<xsl:value-of select="texto"/></ol>
       </xsl:for-each>
    </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
