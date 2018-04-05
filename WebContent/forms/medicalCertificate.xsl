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
	<title> Confirmation Form of Medical Treatment </title>
	<link rel="shortcut icon" href="http://www.3ksoftware.com/favicon.ico"/>
	<link type="text/css" href="http://www.uccxml.com/xdrp/baseXML/lib/css/soaxml_common.css" rel="stylesheet"  media="screen"/>
	<link type="text/css" href="http://www.uccxml.com/xdrp/baseXML/lib/css/uniform.default.css" rel="stylesheet" media="screen" />
	<link type="text/css" href="http://www.uccxml.com/xdrp/baseXML/lib/css/jquery-ui.1.10.3.smoothness.css" rel="stylesheet" media="screen" />
	<style></style>
<style>

body {background-color:#ffffff;}

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
<form name="medicalCertificate">
<P align="center">
<TABLE style="HEIGHT: 475px; WIDTH: 876px" borderColor="#c0c0c0" cellSpacing="0" cellPadding="3" border="5">
<COLGROUP>
<COL width="700">
</COL>
</COLGROUP>
<TBODY>
<TR>
<TD style="VERTICAL-ALIGN: top">
<P align="center">

<SPAN style="FONT-SIZE: 22pt">진 료 확 인 서</SPAN>
</P>
<HR style="HEIGHT: 2px; WIDTH: 90%; BACKGROUND-COLOR: #c0c0c0"/>
<P align="center">

</P>
<P align="center">
<TABLE style="HEIGHT: 214px; WIDTH: 846px; TABLE-LAYOUT: fixed; margin: auto;" borderColor="#404040" cellSpacing="0" cellPadding="3" border="1">
<COLGROUP>
<COL width="218">
</COL>
<COL width="218">
</COL>
<COL width="218">
</COL>
<COL>
</COL>
</COLGROUP>
<TBODY>
<TR>
<TD colSpan="4">
<P align="center">
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">환자의 성명
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/contents/patientName"/>
</P>
</TD>
<TD>
<P align="center">주민등록번호
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/contents/patientID"/>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">초 진 일 자
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/contents/dateOfVisit"/>
</P>
</TD>
<TD>
<P align="center">발병일(사고일)
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/contents/dateOfIlled"/>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">진단명
</P>
<P align="center">
<INPUT type="checkbox" value="임상진단" name="root/contents/diagnosis/diagnosisCheck"/>
임상적진단
<INPUT type="checkbox" value="최종진단" name="root/contents/diagnosis/diagnosisCheck"/>
최종진단
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/contents/diagnosis/diagnosisName"/>
</P>
</TD>
<TD>
<P align="center">국제질병분류번호
</P>
</TD>
<TD>
<P align="left">
<SELECT name="root/contents/intDiseaseCode/codeCheck">
<OPTION value="yes">check
</OPTION>
<OPTION selected="selected" value="no">null
</OPTION>
</SELECT> :
<xsl:value-of select="root/contents/intDiseaseCode/code"/>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">초진시 증상
</P>
</TD>
<TD colSpan="3">
<P align="left">
<xsl:apply-templates select="root/contents/firstVIsitSymptom"/>&#160;
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">진 단 내 용
</P>
</TD>
<TD colSpan="3">
<P align="left">
<xsl:apply-templates select="root/contents/diagnosisContents"/>&#160;
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">치 료 소 견
</P>
</TD>
<TD colSpan="3">
<P align="left">
<xsl:apply-templates select="root/contents/therapeuticRemarks"/>&#160;
</P>
</TD>
</TR>
<TR>
<TD colSpan="4">
<P align="center">상기 기재한 내용은 환자의 진료기록부의 의한 것임.
</P>
<P align="center">발 행 일 :
<xsl:value-of select="root/contents/publishedDate"/>
</P>
<P align="center">
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">병 원 주 소
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/contents/addressOfHos"/>
</P>
</TD>
<TD>
<P align="center">병 원 명
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/contents/nameOfHos"/>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">면 허 번 호
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/contents/liscenseNum"/>
</P>
</TD>
<TD>
<P align="center">의 사 성 명
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/contents/nameOfDoctor"/>
</P>
</TD>
</TR>
</TBODY>
</TABLE>
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
