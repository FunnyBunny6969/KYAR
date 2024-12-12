<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/store">
<html>

<head>
    <title>TITLE</title>
</head>

<body>
<h2>STORE</h2>

<table border="1">
<tr bgcolor="yellow">
    <th><xsl:value-of select="head/nid"/></th>
    <th><xsl:value-of select="head/nname"/></th>
    <th><xsl:value-of select="head/ndescription"/></th>
    <th><xsl:value-of select="head/nprice"/></th>
</tr>


<xsl:for-each select="product">
    <xsl:sort select="price" data-type="number" order="ascending"/>
    <tr>
        <td><xsl:value-of select="id"/></td>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="description"/></td>
        <td><xsl:value-of select="price"/></td>
    </tr>
</xsl:for-each>


</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>