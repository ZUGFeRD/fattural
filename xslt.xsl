<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">
<xsl:output method="text"/>
<xsl:template match='/'>
{
    "total_amount": "<xsl:value-of select="//*[local-name()='SpecifiedTradeSettlementHeaderMonetarySummation']/*[local-name()='GrandTotalAmount']"/>",
    "vendor_name":"<xsl:value-of select="//*[local-name()='SellerTradeParty']/*[local-name()='Name']"/>",
    "invoice_date":"<xsl:value-of select="//*[local-name()='IssueDateTime']/*[local-name()='DateTimeString']"/>",
    "invoice_number":"<xsl:value-of select="//*[local-name()='ExchangedDocument']/*[local-name()='ID']"/>"
}
</xsl:template>
</xsl:stylesheet>
