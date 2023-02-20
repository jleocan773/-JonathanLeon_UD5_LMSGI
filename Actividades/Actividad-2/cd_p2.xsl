<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Lista de CDs de 1 Michael Jackson</h1>
                    <table border="5">
                        <tr bgcolor="#7fffd4 ">
                            <th>Título Álbum</th>
                            <th>Artista</th>
                            <th>Canciones</th>
                            <th>Duracion</th>
                            <th>Sello Discográfico</th>
                            <th>Año Publicación</th>
                        </tr>
                        <xsl:for-each select="cds/cd">
                        <xsl:if test="artista = 'Michael Jackson'">
                            <tr>
                                <td><xsl:value-of select="albumTitulo"/></td>
                                <td><xsl:value-of select="artista"/></td>
                                <td> <xsl:for-each select="cancion">
                                    <xsl:value-of select="."/> <br/>
                                    </xsl:for-each></td>
                                    <td> <xsl:for-each select="cancion/duracion">
                                        <xsl:value-of select="."/> <br/>
                                        </xsl:for-each></td>
                                <td><xsl:value-of select="selloDiscografico"/></td>
                                <td><xsl:value-of select="añopublicacion"/></td>
                            </tr>
                        </xsl:if>
                        </xsl:for-each>
                    </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>