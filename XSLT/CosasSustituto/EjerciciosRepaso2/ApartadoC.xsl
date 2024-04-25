<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
       <body>
          <h1>Inventario de productos</h1>
                 <xsl:for-each select="inventario/item">
                 <xsl:variable name="RopaAvailable" select="available = 'true'"/>
                  <h2><xsl:value-of select="name"/></h2>
                  
                   <img src="E:\curso 2023-2024\linguaxes\3evaluacion\XSLT\ejercicios repaso 2\imagenes" alt="Imagen del producto" width="100" />
                <xsl:value-of select="brand"/>-<xsl:value-of select="category"/>
                 
                  <p>Precio: $ 
                  <xsl:value-of select="price"/></p>
                  
                  <xsl:choose>
                    <xsl:when test="$RopaAvailable">
                        <p style="color:#30ff06;">Disponible</p>
                    </xsl:when>
                  <xsl:otherwise>
                  <p style="color:#ff0606;">Agotado</p>
                  </xsl:otherwise>
                  </xsl:choose>
                 </xsl:for-each>
       </body> 
  </html>
  </xsl:template>
</xsl:stylesheet>
