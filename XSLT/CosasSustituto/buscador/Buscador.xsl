<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
       <body>
      <xsl:variable name="BuLib" select="'Th'"/>
      
      <xsl:for-each select="library/book">

      <p><xsl:value-of select="substring($BuLib,1,2)"/></p>
   
   </xsl:for-each>
       </body> 
  </html>
  </xsl:template>
</xsl:stylesheet>
