<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
         <title>Лабораторная работа 10</title>
          <meta charset="utf-8"></meta>
          <link rel="stylesheet" type="text/css" href="xml_to_html_style.css" />
      </head>
      <body>
        <div class='header'>Количество чисел, удовлетворяющих условию: <xsl:value-of select="//result/number_of_palindromes"/></div>
        <table border="1">
          <caption><xsl:value-of select="//description"/></caption>
          <tr>
			      <th>Палиндром</th>
			      <th>Квадрат палиндрома</th>
		      </tr>
          <xsl:for-each select="//result/array">
          <tr>
            <td><xsl:value-of select="el"/></td>
            <td><xsl:value-of select="sqr_el"/></td>
          </tr>
          </xsl:for-each>
        </table>
        <a href='/'>Повторить</a>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
