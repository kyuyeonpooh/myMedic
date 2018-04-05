<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/">
<xsl:decimal-format name="digit" decimal-separator="." grouping-separator="," infinity="&#x221E;" minus-sign="-" NaN="0" percent="%" per-mille="&#x03BC;" zero-digit="0" digit="#" pattern-separator=";" />
<xsl:output method="html" doctype-system="http://www.w3.org/TR/html4/strict.dtd" doctype-public="-//W3C//DTD HTML 4.01//EN" indent="yes" />
<xsl:template match="/">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title> Medical Certificate </title>
	<link rel="shortcut icon" href="http://www.3ksoftware.com/favicon.ico"/>
	<link type="text/css" href="http://www.uccxml.com/xdrp/baseXML/lib/css/soaxml_common.css" rel="stylesheet"  media="screen"/>
	<link type="text/css" href="http://www.uccxml.com/xdrp/baseXML/lib/css/uniform.default.css" rel="stylesheet" media="screen" />
	<link type="text/css" href="http://www.uccxml.com/xdrp/baseXML/lib/css/jquery-ui.1.10.3.smoothness.css" rel="stylesheet" media="screen" />
	<style></style>
<style>
body {background: snow;}
form {height: 100%; overflow:auto;}
canvas{height: inherit; !important;}

</style>

	<script type="text/javascript" src="http://www.uccxml.com/xdrp/baseXML/lib/scripts/bxControl.js"></script>
	<script type="text/javascript" src="http://www.uccxml.com/xdrp/baseXML/lib/scripts/bxCommon.js"></script>
	<script type="text/javascript" src="http://www.uccxml.com/xdrp/baseXML/lib/scripts/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="http://www.uccxml.com/xdrp/baseXML/lib/scripts/jquery-ui.1.10.3.min.js"></script>
	<script type="text/javascript" src="http://www.uccxml.com/xdrp/baseXML/lib/scripts/jquery.uniform.js"></script>
	<script type="text/javascript" src="http://www.uccxml.com/xdrp/baseXML/lib/scripts/jSignature.custom.js"></script>
	<script src="../public/js/web3.js"></script>
	<script src="../public/js/web3.jb.js"></script>
	<script>
	    jb.checkXml();
	    
	    $(function() {
			$('#qr').attr('src', qr(window.location.href));
		});
	</script>
	<script type="text/javascript">
		function basexml_checktype() {
			bxfSetValRadioBtn("root/personal/gender",'<xsl:value-of select="root/personal/gender"/>');
bxfSetValRadioBtn("root/disease/class",'<xsl:value-of select="root/disease/class"/>');
			$("input, textarea, select, button").uniform();
			$("input[type='radio']").each(function(){
				$(this).attr("disabled","true");
			});
			$("input[type='checkbox']").each(function(){
				$(this).attr("disabled","true");
			});
			$("select").each(function(){
				$(this).attr("disabled","true");
			});
		}
	</script>
	<script type="text/javascript" src="http://www.uccxml.com/xdrp/baseXML/lib/scripts/bxFormForMongo.js"></script>
</head>
<body onLoad='javascript:basexml_checktype( );'>
<form name="mediCert">
<P>
<TABLE style="HEIGHT: 909px; WIDTH: 843px; margin: auto;" borderColor="#000000" cellSpacing="0" cellPadding="3" border="1">
<COLGROUP>
<COL width="100">
</COL>
<COL width="60">
</COL>
<COL width="60">
</COL>
<COL width="40">
</COL>
<COL width="60">
</COL>
<COL width="40">
</COL>
<COL width="20">
</COL>
<COL width="100">
</COL>
<COL width="40">
</COL>
<COL width="40">
</COL>
<COL width="20">
</COL>
<COL width="60">
</COL>
</COLGROUP>
<TBODY>
<TR>
<TD colSpan="12">
<P align="center">
<SPAN style="FONT-SIZE: 20pt">
<STRONG>진&#160;&#160; 단&#160; &#160;서
</STRONG>
</SPAN>
</P>
</TD>
</TR>
<TR>
<TD colSpan="2">
<P>병록번호
<xsl:value-of select="root/sicknessRecordNumber"/>
</P>
</TD>
<TD colSpan="4">
<P>면번호&#160;
<xsl:value-of select="root/number"/>
</P>
</TD>
<TD colSpan="6">
<P>주민등록번호
<xsl:value-of select="root/personal/regiNum"/>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">환자의 성명
</P>
</TD>
<TD colSpan="2">
<P>
<xsl:value-of select="root/personal/name"/>
</P>
</TD>
<TD>
<P align="center">성별
</P>
</TD>
<TD>
<P align="center">
<INPUT type="radio" value="male" name="root/personal/gender"/>
남
<INPUT type="radio" value="female" name="root/personal/gender"/>
여
</P>
</TD>
<TD colSpan="2">
<P align="center">생년
</P>
<P align="center">월일
</P>
</TD>
<TD colSpan="3">
<P align="right">
<xsl:value-of select="root/personal/birthday"/>
</P>
</TD>
<TD>
<P>연
</P>
<P>령
</P>
</TD>
<TD>
<P>만
<xsl:value-of select="root/personal/age"/>
세
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">환자의 연락처
</P>
</TD>
<TD colSpan="11">
<xsl:value-of select="root/personal/telNumber"/>
</TD>
</TR>
<TR>
<TD>
<P align="center">환자의 주소
</P>
</TD>
<TD colSpan="11">
<P>
<xsl:value-of select="root/personal/address"/>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">병&#160;&#160;&#160;&#160;&#160; 명
</P>
<P align="center">
</P>
<P align="center">
<INPUT type="radio" value="speculation" name="root/disease/class"/>
임상적 추정
</P>
<P align="center">
</P>
<P align="center">
<INPUT type="radio" value="final" name="root/disease/class"/>
최종 진단
</P>
</TD>
<TD colSpan="8">
<P>
<xsl:value-of select="root/disease/diseaseName"/>
</P>
</TD>
<TD colSpan="3">
<P align="center">한 국 질 병
</P>
<P align="center">분 류 번 호
</P>
<P align="center">
</P>
<P align="center">
<xsl:value-of select="root/disease/diseaseNumber"/>
</P>
<P align="center">
</P>
<P align="center">
</P>
<P align="center">
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">발&#160; 병 &#160;일
</P>
</TD>
<TD colSpan="3">
<P align="right">
<xsl:value-of select="root/date/diseaseDate"/>
&#160;
</P>
</TD>
<TD colSpan="2">
<P align="center">진 단 일
</P>
</TD>
<TD colSpan="6">
<P align="right">
<xsl:value-of select="root/date/diagnosisDate"/>
&#160;
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">향&#160;&#160;&#160;&#160;&#160;&#160; 후
</P>
<P align="center">치&#160;&#160;&#160;&#160;&#160;&#160; 료
</P>
<P align="center">의&#160;&#160;&#160;&#160;&#160;&#160; 견
</P>
</TD>
<TD colSpan="11">
<P>&#160;
<xsl:apply-templates select="root/doctor/doctorOpinion"/>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">비&#160;&#160;&#160;&#160;&#160;&#160; 고
</P>
</TD>
<TD colSpan="4">
<P>&#160;
<xsl:value-of select="root/remark"/>
</P>
</TD>
<TD colSpan="3">
<P align="center">용 도
</P>
</TD>
<TD colSpan="4">
<P>&#160;
<xsl:value-of select="root/usage"/>
</P>
</TD>
</TR>
<TR>
<TD colSpan="12">
<P align="center">
<STRONG>
</STRONG>
</P>
<P align="center">
<STRONG>위와 같이 진단함
</STRONG>
</P>
<P align="center">
<STRONG>
</STRONG>
</P>
<P align="center">
<TABLE style="WIDTH: 700px; margin: auto;" borderColor="#000000" cellSpacing="0" cellPadding="3" border="1">
<COLGROUP>
<COL width="200">
</COL>
<COL width="200">
</COL>
<COL width="100">
</COL>
<COL width="100">
</COL>
</COLGROUP>
<TBODY>
<TR>
<TD>
<P align="center">
<STRONG>발&#160;&#160;&#160;&#160; 행&#160;&#160;&#160;&#160;일
</STRONG>
</P>
</TD>
<TD colSpan="3">
<P align="left">&#160;
<xsl:value-of select="root/date/pubDate"/>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">
<STRONG>의 료 기 관 명
</STRONG>
</P>
</TD>
<TD colSpan="3">
<P>&#160;
<xsl:value-of select="root/hospital/hospitalName"/>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">
<STRONG>주 소 및 명 칭
</STRONG>
</P>
</TD>
<TD colSpan="3">
<P>&#160;
<xsl:value-of select="root/hospital/hospitalAddress"/>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">
<STRONG>전 화 및 FAX
</STRONG>&#160;&#160;
</P>
</TD>
<TD colSpan="3">
<P>&#160;
<xsl:value-of select="root/hospital/hospitalTel"/>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">
<STRONG>면 허 번 호&#160;&#160;
</STRONG>&#160;&#160;
</P>
</TD>
<TD>
<P align="right">제&#160;&#160;&#160;&#160;&#160;
<xsl:value-of select="root/doctor/doctorLisenceNum"/>
&#160;호
</P>
</TD>
<TD>의사성명
</TD>
<TD>
<P>&#160;
</P>
<P>&#160;
<xsl:value-of select="root/doctor/doctorName"/>
</P>
<P>&#160;
</P>
</TD>
</TR>
</TBODY>
</TABLE>
</P>
<STRONG>
</STRONG>
<P align="center">
</P>
</TD>
</TR>
	<tr>
		<td align="center">
			<img id="qr"/>
		</td>
	</tr>
</TBODY>
</TABLE>
</P>
</form>
<script language="JavaScript" src="http://www.uccxml.com/xdrp/baseXML/lib/scripts/bxXsl.js"></script>
</body>
</html>
</xsl:template>
<xsl:template match="BR"><br/></xsl:template>
<xsl:template match="br"><br/></xsl:template>
<xsl:template match="li"><li/></xsl:template>
<xsl:template match="LI"><LI/></xsl:template>
<xsl:template match="A">
<xsl:element name="a">
	<xsl:attribute name="href" ><xsl:value-of select="@href"/></xsl:attribute>
	<xsl:attribute name="target"><xsl:value-of select="@target"/></xsl:attribute>
	<xsl:attribute name="title"><xsl:value-of select="@title"/></xsl:attribute>
	<xsl:attribute name="class"><xsl:value-of select="@class"/></xsl:attribute>
	<xsl:value-of select="."/>
</xsl:element>
</xsl:template>
<xsl:template match="FONT">
<xsl:element name="FONT">
	<xsl:attribute name="color"><xsl:value-of select="@color"/></xsl:attribute>
	<xsl:attribute name="title"><xsl:value-of select="@title"/></xsl:attribute>
	<xsl:attribute name="face"><xsl:value-of select="@face"/></xsl:attribute>
	<xsl:attribute name="style"><xsl:value-of select="@style"/></xsl:attribute>
	<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
	<xsl:attribute name="class"><xsl:value-of select="@class"/></xsl:attribute>
	<xsl:value-of select="."/>
</xsl:element>
</xsl:template>
<xsl:template match="IMG">
<xsl:element name="img">
	<xsl:attribute name="src"><xsl:value-of select="@src"/></xsl:attribute>
	<xsl:attribute name="style"><xsl:value-of select="@style"/></xsl:attribute>
	<xsl:attribute name="align"><xsl:value-of select="@align"/></xsl:attribute>
	<xsl:attribute name="hspace"><xsl:value-of select="@hspace"/></xsl:attribute>
	<xsl:attribute name="vspace"><xsl:value-of select="@vspace"/></xsl:attribute>
	<xsl:attribute name="border"><xsl:value-of select="@border"/></xsl:attribute>
	<xsl:attribute name="alt"><xsl:value-of select="@alt"/></xsl:attribute>
	<xsl:value-of select="."/>
</xsl:element>
</xsl:template>
<xsl:template match="HR"><hr/></xsl:template>
</xsl:stylesheet>
