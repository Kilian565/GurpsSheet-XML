<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>

      <body>
        <h2>Gurps Character</h2>
        <table border="1">
          <tr bgcolor="#9acd90">
            <!--<spieler>-->
            <th style="text-align:left">SpielerName</th>
            <th style="text-align:left">CharName</th>
            <th style="text-align:left">CharStory</th>
            <th style="text-align:left">GebJahr</th>
            <th style="text-align:left">Reihenfolge</th>

            <!--<attribute> STATS-->
            <th style="text-align:left">CPgesamt</th>
            <th style="text-align:left">Stärke</th>
            <th style="text-align:left">Geschicklichkeit</th>
            <th style="text-align:left">Intelligenz</th>
            <th style="text-align:left">Konstitution</th>

            <th style="text-align:left">Grundgeschwindigkeit</th>
            <th style="text-align:left">Belastungswert</th>

            <th style="text-align:left">Schwungschaden</th>
            <th style="text-align:left">Stossschaden</th>

            <th style="text-align:left">PhyFaehigkeiten</th>
            <th style="text-align:left">MentFaehigkeiten</th>


            <th style="text-align:left">Vorteile</th>
            <th style="text-align:left">Nachteile</th>
            <th style="text-align:left">Marotten</th>

            <!--INVENTAR-->
            <th style="text-align:left">Gegenstand</th>



          </tr>
          <xsl:for-each select="gurps/charakter">
            <xsl:variable name='cID'>
              <xsl:value-of select="@ID"/>
            </xsl:variable>
            <tr>
              <td>
                <xsl:value-of select="spieler/spielername"/>
              </td>
              <td>
                <xsl:value-of select="spieler/charname"/>
              </td>
              <td>
                <xsl:value-of select="spieler/charstory"/>
              </td>
              <td>
                <xsl:value-of select="spieler/gebjahr"/>
              </td>
              <td>
                <xsl:value-of select="spieler/reihenfolge"/>
              </td>


              <td>
                <xsl:value-of select="attribute/stats/cpgesamt"/>
              </td>
              <td>
                <xsl:value-of select="attribute/stats/staerke"/>
              </td>
              <td>
                <xsl:value-of select="attribute/stats/geschicklichkeit"/>
              </td>
              <td>
                <xsl:value-of select="attribute/stats/intelligenz"/>
              </td>
              <td>
                <xsl:value-of select="attribute/stats/konstitution"/>
              </td>


              <td>
                <xsl:value-of select="attribute/bewegung/grundgeschwindigkeit"/>
              </td>
              <td>
                <xsl:value-of select="attribute/bewegung/belastungswert"/>
              </td>

              <td>
                <xsl:value-of select="attribute/schaden/schwungschaden"/>
              </td>
              <td>
                <xsl:value-of select="attribute/schaden/stossschaden"/>
              </td>

              <td>
                <xsl:value-of select="count(/gurps/charakter[@ID=$cID]/attribute/faehigkeiten/physischefaehigkeiten/fertigkeit)"/>
              </td>
              <td>
                <xsl:value-of select="count(/gurps/charakter[@ID=$cID]/attribute/faehigkeiten/mentalefaehigkeiten/fertigkeit)"/>
              </td>
              <td>
                <xsl:value-of select="count(/gurps/charakter[@ID=$cID]/attribute/vorteile)"/>
              </td>
              <td>
                <xsl:value-of select="count(/gurps/charakter[@ID=$cID]/attribute/nachteile)"/>
              </td>
              <td>
                <xsl:value-of select="count(/gurps/charakter[@ID=$cID]/attribute/marotten)"/>
              </td>
              <td>
                <xsl:value-of select="count(/gurps/charakter[@ID=$cID]/inventar/gegenstand)"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>