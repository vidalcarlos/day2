<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : bugReportStyle.xsl
    Created on : May 19, 2015, 11:21 AM
    Author     : Formação
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>bugReportStyle.xsl</title>
            </head>
            <body>
                <h1>Report de Bugs</h1>
                <table>
                    
                    <th>BUGId</th>
                    <th>nome</th>
                    <th>email</th>
                    <th>prioridade</th>
                    <th>Desc</th>
                    <th>Img</th>
                    <th>Estado</th>
                    
                    <xsl:for-each select="bugReport/bug">
                                      
                        <tr>
                            <td>
                                <xsl:value-of select="user"/>
                            </td>
                            <td>
                                <xsl:value-of select="email"/>
                            </td>
                            <td>
                                <xsl:value-of select="prioridade"/>
                            </td>
                            <td>
                                <xsl:value-of select="descricao"/>
                            </td>
                            <td>
                                <xsl:value-of select="imagem"/>
                            </td>
                            <td>
                                <xsl:value-of select="fechado"/>
                            </td>                        
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
