<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
 <html>
 <body>
    <h2>Catálogo de CDs</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Título del Álbum</th>
        <th>Artista</th>
        <th>Canciones</th>
        <th>Sello Disográfico</th>
        <th>Año de Publicación</th>
      </tr>
      <xsl:for-each select="catalogo/cd">
      <tr>
        <td><xsl:value-of select="titulo"/></td>
        <td><xsl:value-of select="artista"/></td>
        <td>
          <ul>
            <xsl:for-each select="canciones/cancion">
              <li><xsl:value-of select="title"/> - <xsl:value-of select="duration"/></li>
            </xsl:for-each>
          </ul>
        </td>
        <td><xsl:value-of select="discografica"/></td>
        <td><xsl:value-of select="anio"/></td>
      </tr>
      </xsl:for-each>
    </table>
 </body>
 </html>
</xsl:template>
</xsl:stylesheet>
