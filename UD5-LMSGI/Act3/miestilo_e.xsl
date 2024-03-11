<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output method="text"/>
 <xsl:template match="/">
    <xsl:for-each select="root/record[substring(date/@when, 1, 4) >= '1789']">
      <xsl:sort select="substring(date/@when, 1, 10)" order="descending" data-type="text"/>
      <xsl:value-of select="id"/>, <xsl:value-of select="title"/>, <xsl:value-of select="substring(date/@when, 1, 10)"/><xsl:text>&#xA;</xsl:text>
    </xsl:for-each>
 </xsl:template>
</xsl:stylesheet>