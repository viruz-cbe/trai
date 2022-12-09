<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<html>
	<body style="font-family:Times New Roman; 
			background-color:#4C4C4C; 
			font-size:18px; 
			color:white;">
		<xsl:for-each select="clg/student">
			<div style="height: 125px;
				width: 235px;
				padding: 10px 35px;
				background: #191919;
				border-radius: 40px;
				position: relative;
				overflow: hidden;
				text-align: center;">
				<xsl:value-of select="rno"/>
				<xsl:value-of select="name"/>
				<xsl:value-of select="dept"/>
				<div style="height: 75px;
					width: 90px;
					padding: 10px 35px;
					background: #261616;
					border-radius: 20px;
					position: relative;
					overflow: hidden;
					text-align: center;">
					<h3>CGPA </h3>
						<h2><xsl:value-of select="cgpa"/></h2>
				</div>
			</div>
		</xsl:for-each>
	</body>
</html>
</xsl:stylesheet>
