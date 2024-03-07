<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
    <html>
        <body>
            <h2>Canciones con duración inferior a 4 minutos</h2>
            <table border="1">
                <tr bgcolor="grey">
                    <th>Título</th>
                    <th>Duración</th>
                </tr>
                <xsl:for-each select="catalogo/cd/canciones/cancion">
                    <xsl:variable name="duracion" select="duration"/>
                    <xsl:variable name="minutos" select="number(substring($duracion, 1, 1))"/>
                    <xsl:if test="$minutos &lt; 4">
                        <tr>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="duration"/></td>
                        </tr>
                    </xsl:if>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>
