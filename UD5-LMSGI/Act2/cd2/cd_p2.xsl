<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
 <html>
 <body>
    <h2>Canciones de Eminem</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Título del Álbum</th>
        <th>Canciones</th>
      </tr>
      <xsl:for-each select="catalogo/cd[artista='Eminem']">
      <tr>
        <td><xsl:value-of select="titulo"/></td>
        <td>
          <ul>
            <xsl:for-each select="canciones/cancion">
              <li><xsl:value-of select="title"/> - <xsl:value-of select="duration"/></li>
            </xsl:for-each>
          </ul>
        </td>
      </tr>
      </xsl:for-each>
    </table>
 </body>
 </html>
</xsl:template>
</xsl:stylesheet>
