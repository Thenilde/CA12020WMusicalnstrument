<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"><xsl:template match="/">
    <html>
        <head>
            <title>Music Show</title>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <link rel="stylesheet" href="css/MusicShow.css" />
            <script type="text/javascript" src="js/MusicShow.js">x</script>
        </head>
            <body>
                <h2>
                    <img src="img/MusicShow.gif" alt="Javaco Tea Logo" width="58" height="100" />Welcome to Mussic Show</h2>
                <p>Select your instruments from the menu below. To calculate the amount of the bill, click the Calculate Bill button. Check the "Highlight Musical Instrument" box to highlight instrument.</p>
                <table id="menuTable" border="1" class="indent">
                    <thead>
                        <tr>
                            <th colspan="3">Music Show</th>
                        </tr>
                        <tr>
                            <th>Select</th>
                            <th>Item</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/musicshow/section">
                            <tr>
                                <td colspan="3">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="instrument">
                                <tr>
                                    <xsl:attribute name="sale">
                                        <xsl:value-of select="boolean(@sale)" />
                                    </xsl:attribute>
                                    <td align="center">
                                        <input name="item0" type="checkbox" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="item" />
                                    </td>
                                    <td align="right">
                                        <xsl:value-of select="price" />
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table>
                <form class="indent">
                    <p>
                        <input type="button" name="btnCalcBill" value="Calculate Bill" id="calcBill" />
                Total: €
                <input type="text" name="txtBillAmt" /><input type="checkbox" name="cbOpts" value="isInstr" id="showInstr" /><label for="showInstr">Highlight Musical INstruments</label></p>
                </form>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>