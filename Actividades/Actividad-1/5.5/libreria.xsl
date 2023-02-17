<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Mi Biblioteca Personal</h1>
                    <table>
                        <tr bgcolor="#7fffd4 ">
                            <th>ISBN</th>
                            <th>Titulo</th>
                            <th>Autor</th>
                            <th>Precio</th>
                            <th>numPaginas</th>
                        </tr>
                        <xsl:for-each select="libreria/libro">
                            <tr>
                                <td><xsl:value-of select="isbn"/></td>
                                <td><xsl:value-of select="titulo"/></td>
                                <td><xsl:value-of select="autor"/></td>
                                <td><xsl:value-of select="precio"/></td>
                                <xsl:choose>
                                    <xsl:when test="numPaginas &gt; 500">
                                        <td bgcolor="#ff0000 ">
                                        <xsl:value-of select="numPaginas"/>
                                        </td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td><xsl:value-of select="numPaginas"/></td>
                                    </xsl:otherwise>
                                </xsl:choose>
                                 </tr>
                        </xsl:for-each>
                    </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>