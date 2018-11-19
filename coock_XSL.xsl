<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>My CD Collection</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>TITULO</th>
        <th>INGREDIENTES</th>
        <th>ELABORACION</th>
      </tr>
      <xsl:for-each select="LIBRODECOCINA/RECETA">
        <tr>
          <td><xsl:value-of select="TITULO"/></td>
          <td>
            <ul>
              <xsl:for-each select="INGREDIENTE">
                  <li><xsl:value-of select="current()"/></li>
              </xsl:for-each>
            </ul>
          </td>
          <td>
            <ol>
              <xsl:for-each select="ELABORACION/PASO">
                <li><xsl:value-of select="current()"/></li>
              </xsl:for-each>            
            </ol>
          </td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>