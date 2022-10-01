<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes" omit-xml-declaration="yes" />
  <xsl:variable name="year" select="//YearQuery" />
  <!-- <xsl:variable name="mpg" select="14" /> -->

  <!-- <xsl:template match="/">
    <cars>
      <xsl:for-each select="/">
        <xsl:copy-of select="//cars/car[ Year = $year]" />
      </xsl:for-each>
    </cars>
  </xsl:template> -->

  <xsl:template match="/">
    <cars>
      <xsl:for-each select="//cars/car">
        <xsl:if test="Year = $year">
          <xsl:copy-of select="." />
        </xsl:if>
      </xsl:for-each>
    </cars>
  </xsl:template>
</xsl:stylesheet>