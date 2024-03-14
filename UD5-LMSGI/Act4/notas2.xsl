<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/notas">
        <html>
            <head>
                <title>Actividad 4 - UD5 LMSGI</title>
                <style type="text/css">
                    .azul1{background-color:#369;}
                    .azul2{background-color:#69C;}
                    .azul3{background-color:#e0ffff;}
                    td{test-align: center;}
                    h2{color:#f00, font}
                </style>
            </head>
            <body>
                <div class="layer">
                    <table>
                        <tr>
                            <th colspan="2">Datos</th>
                            <th colspan="2">Notas</th>
                        </tr>
                        <tr>
                            <th>Nombre</th>
                            <th>Apellidos</th>
                            <th>Tareas</th>
                            <th>Cuestionarios</th>
                            <th>Examen</th>
                            <th>Final</th>
                        </tr>
                        <xsl:apply-templates select="alumno[@convocatoria='Junio']"/>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="alumno">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="apellidos"/></td>
            <td><xsl:value-of select="cuestionarios"/>, <xsl:value-of select="tareas"/>, <xsl:value-of select="examen"/></td>
            <td>
                <xsl:choose>
                    <xsl:when test="final >= 9">
                        <span class="sobresaliente">Sobresaliente</span>
                    </xsl:when>
                    <xsl:when test="final >= 7">
                        <span class="notable">Notable</span>
                    </xsl:when>
                    <xsl:when test="final >= 6">
                        <span class="bien">Bien</span>
                    </xsl:when>
                    <xsl:when test="final >= 5">
                        <span class="suficiente">Suficiente</span>
                    </xsl:when>
                    <xsl:otherwise>
                        <span class="suspenso">Suspenso</span>
                    </xsl:otherwise>
                </xsl:choose>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="matricula"/>

</xsl:stylesheet>
