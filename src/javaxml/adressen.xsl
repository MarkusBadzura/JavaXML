<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
		<body>
			<h1>Hier stehen die Adressen</h1>
			<table>
				<thead>
					<tr>
						<th>Vorname</th>
						<th>Nachname</th>
						<th>Anschrift</th>
					</tr>
				</thead>
				<tbody>
				<xsl:for-each select="adressen/adresse">
					<tr>
						<td><xsl:value-of select="vorname" /></td>
						<td><xsl:value-of select="nachname" /></td>
						<td>
							<xsl:for-each select="anschrift">
								<xsl:value-of select="str" /><br/>				
								<xsl:value-of select="plz" /> <xsl:value-of select="ort" /><br />				
							</xsl:for-each>
						</td>
					</tr>
				</xsl:for-each>
				</tbody>
			</table>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>