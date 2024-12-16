<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/attestation">
<html>

<head>
    <title>АТТЕСТАЦИЯ</title>
</head>

<body>
<h2>Аттестация</h2>

<table border="1">
<tr bgcolor="yellow">
    <th><xsl:value-of select="head/nname"/></th>
    <th><xsl:value-of select="head/ngrade"/></th>
</tr>


<xsl:for-each select="student">
    <xsl:sort select="grade" data-type="number" order="descending"/>
    <tr>

    <td><xsl:value-of select="name"/></td>
    <xsl:choose>
        <xsl:when test="grade&gt; 8">
            <td bgcolor="green"><xsl:value-of select="grade"/></td>
        </xsl:when>
        <xsl:otherwise>
            <xsl:choose>
                <xsl:when test="grade&lt; 4">
                    <td bgcolor="red"><xsl:value-of select="grade"/></td>
                </xsl:when>
                <xsl:otherwise>
                    <td><xsl:value-of select="grade"/></td>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:otherwise>
    </xsl:choose>

    </tr>
</xsl:for-each>


</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>