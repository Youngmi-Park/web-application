<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <body>
            <table border="1">
                <tr>
                    <th>번호</th><th>제목</th><th>신문사</th><th>기자</th>
                    <th>년도</th><th>월</th><th>일</th><th>내용 요약</th><th>링크</th><th>이미지</th>
                </tr>
                <xsl:for-each select="news//summary">
                    <tr>
                        <td><xsl:number format="1"/></td>
                        <xsl:apply-templates select="title"/>
                        <xsl:apply-templates select="company"/>
                        <xsl:apply-templates select="writer"/>
                        <xsl:apply-templates select="year"/>
						<xsl:apply-templates select="month"/>
						<xsl:apply-templates select="day"/>
                        <xsl:apply-templates select="contents_summary"/>
                        <xsl:apply-templates select="source"/>
                        <xsl:apply-templates select="pic"/>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>


  <xsl:template match="title">
    <td> 
      <xsl:value-of select="."/>
    </td>
  </xsl:template>

  <xsl:template match="company">
    <td> 
      <xsl:value-of select="."/>
    </td>
  </xsl:template>

    <xsl:template match="writer">
    <td> 
      <xsl:value-of select="."/>
    </td>
  </xsl:template>

    <xsl:template match="year">
    <td> 
      <xsl:value-of select="."/>
    </td>
  </xsl:template>
    <xsl:template match="month">
    <td> 
      <xsl:value-of select="."/>
    </td>
  </xsl:template>
      <xsl:template match="day">
    <td> 
      <xsl:value-of select="."/>
    </td>
  </xsl:template>
  <xsl:template match="contents_summary">
    <td> 
      <xsl:value-of select="."/>
    </td>
  </xsl:template>
 
  <xsl:template match="source">
    <td> 
      <xsl:value-of select="."/>
    </td>
  </xsl:template>


  <xsl:template match="pic">	
	<td>
        <img style="width: 100px; height: auto; margin: 0 auto;"> 
            <xsl:attribute name="src">
                <xsl:value-of select="."/>
            </xsl:attribute>
        </img>
	</td>
    </xsl:template>

</xsl:stylesheet>