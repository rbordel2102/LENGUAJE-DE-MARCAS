<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Mi biblioteca personal</h1>
        <table>
        <tr bgcolor="#F0FFFF">
            <th>ISBN</th>
            <th>Titulo</th>
            <th>Autor</th>
            <th>Precio</th>
        </tr>
        <xsl:for-each select="libreria/libro">
        <tr>
            <xsl:choose>
                <xsl:when test="precio > 25">
                    <xsl:attribute name="bgcolor">#FF0000</xsl:attribute> <!-- Rojo para precios mayores a 25€ -->
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="bgcolor">#00FF00</xsl:attribute> <!-- Verde para precios menores o iguales a 25€ -->
                </xsl:otherwise>
            </xsl:choose>
            <td><xsl:value-of select="isbn"/></td>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="autor"/></td>
            <td><xsl:value-of select="precio"/></td>
        </tr>
        </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>
