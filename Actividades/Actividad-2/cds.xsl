<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Lista de CDs</h1>
                    <table>
                        <tr bgcolor="#7fffd4 ">
                            <th>Título Álbum</th>
                            <th>Artista</th>
                            <th>Canciones + Tiempo</th>
                            <th>Sello Discográfico</th>
                            <th>Año Publicación</th>
                        </tr>
                        <xsl:for-each select="cds/cd">
                            <tr>
                                <td><xsl:value-of select="albumTitulo"/></td>
                                <td><xsl:value-of select="artista"/></td>
                                <td><xsl:value-of select="cancionesYtiempo"/></td>
                                <td><xsl:value-of select="selloDiscografico"/></td>
                                <td><xsl:value-of select="añopublicacion"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>