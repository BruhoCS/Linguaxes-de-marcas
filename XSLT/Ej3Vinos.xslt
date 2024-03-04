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
 <xsl:sort select="prezo" order="descending" data-type="number"/>
      <tr>
        <td><xsl:value-of select="nome"/></td>
        <td><xsl:value-of select="prezo"/></td>
      </tr>
</xsl:for-each> 
   </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

--------------------------------------------------------------------------------
a) ¿qué pasa si no ponemos el data type? 
Si no se especifica se asumirá el tipo de datos por defecto que es el tipo alfabético
c) ¿cuál es el orden por defecto?
El orden por defecto es ascendente

c) ¿para qué sirve case-order?
Se utiliza para especificar el orden de las letras en las operaciones de ordenamiento.
