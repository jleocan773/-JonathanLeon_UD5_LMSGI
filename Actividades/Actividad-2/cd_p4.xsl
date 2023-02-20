<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Lista de Canciones con Duración mayor a 200 Segundos</h1>
                <table border="5">
                    <tr bgcolor="#7fffd4">
                        <th>Título Álbum</th>
                        <th>Artista</th>
                        <th>Canciones</th>
                        <th>Año Publicación</th>
                        <th>Sello Discográfico</th>
                        <th>Duración</th>
                    </tr>
                    <xsl:for-each select="cds/cd">      
                        <xsl:variable name="albumTitulo">
                            <xsl:value-of select="albumTitulo"/>
                        </xsl:variable>
                        <xsl:variable name="artista">
                            <xsl:value-of select="artista"/>
                        </xsl:variable>
                        <xsl:variable name="selloDiscografico">
                            <xsl:value-of select="selloDiscografico"/>
                        </xsl:variable>
                        <xsl:variable name="añopublicacion">
                            <xsl:value-of select="añopublicacion"/>
                        </xsl:variable>
                        <xsl:for-each select="cancion">
                            <xsl:if test="@duracion &gt; 200">
                                <tr>                                    
                                    <td>
                                        <xsl:value-of select="$albumTitulo"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="$artista"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="$selloDiscografico"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="$añopublicacion"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="."/>
                                        <br/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="@duracion"/>
                                    </td>                             
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 