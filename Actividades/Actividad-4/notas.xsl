<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/notas">
        <xhtml>
            <head>
                <title>Práctica 4</title>
            </head>
            <body>
                <div>
                    <h1 style="text-align:center">Convocatoria de Junio</h1>
                    <table border="5" align="center" style="background-color:LightGrey">
                        <tr style="background-color:eaf27c">
                            <th colspan="3">Datos</th>
                            <th colspan="3">Notas</th>
                        </tr>
                        <tr style="background-color:ce8964">
                            <th>Nombre</th>
                            <th>Apellidos</th>
                            <th>Cuestionarios</th>
                            <th>Tareas</th>
                            <th>Examen</th>
                            <th>Final</th>
                        </tr>
                        <xsl:apply-templates select="./alumno"/>
                    </table>
                </div>
            </body>
        </xhtml>
    </xsl:template>
    <xsl:template match="//alumno">
        <xsl:if test="./@convocatoria='Junio'">
            <tr>
                <td><xsl:value-of select="nombre"/></td>
                <td><xsl:value-of select="apellidos"/></td>
                <td><xsl:value-of select="cuestionarios"/></td>
                <td><xsl:value-of select="tareas"/></td>
                <td><xsl:value-of select="examen"/></td>
                <td>
                    <xsl:choose>
                        <xsl:when test="final&gt;=9">
                            <font color="navy">Sobresaliente</font>
                        </xsl:when>
                        <xsl:when test="final&gt;=7">
                            <font color="blue">Notable</font>
                        </xsl:when>
                        <xsl:when test="final&gt;=6">
                            <font color="black">Bien</font>
                        </xsl:when>
                        <xsl:when test="final&gt;=5">
                            <font color="orange">Suficiente</font>
                        </xsl:when>
                        <xsl:otherwise>
                            <font color="red">Suspenso</font>
                        </xsl:otherwise>
                    </xsl:choose>
                </td>
            </tr>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>