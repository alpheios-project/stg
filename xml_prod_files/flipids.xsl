<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">  
    <xsl:output media-type="text" method="text" ></xsl:output>
    <xsl:template match="//entry">
        <xsl:analyze-string select="text()" regex="^(.*?)\|(.*?)$">
            <xsl:matching-substring><xsl:value-of select="normalize-space(regex-group(2))"></xsl:value-of>|<xsl:value-of select="normalize-space(regex-group(1))"></xsl:value-of></xsl:matching-substring>
        </xsl:analyze-string>
    </xsl:template>
</xsl:stylesheet>
