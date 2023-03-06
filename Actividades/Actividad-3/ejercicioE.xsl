<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text"/>
  <xsl:template match="/">
    <xsl:for-each select="raíz/registro">
      <xsl:sort select="fecha/@cuándo" order="descending" data-type="text"/>
      <xsl:if test="fecha/año = '1789'">
        <xsl:value-of select="identificador"/>, <xsl:value-of select="título"/>, <xsl:value-of select="fecha/@cuándo"/><xsl:text>&#xA;</xsl:text>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>