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
	<title> Medical Certificate of Injury </title>
	<link rel="shortcut icon" href="http://www.3ksoftware.com/favicon.ico"/>
	<link type="text/css" href="http://www.uccxml.com/xdrp/baseXML/lib/css/soaxml_common.css" rel="stylesheet"  media="screen"/>
	<link type="text/css" href="http://www.uccxml.com/xdrp/baseXML/lib/css/uniform.default.css" rel="stylesheet" media="screen" />
	<link type="text/css" href="http://www.uccxml.com/xdrp/baseXML/lib/css/jquery-ui.1.10.3.smoothness.css" rel="stylesheet" media="screen" />

	<script type="text/javascript" src="http://www.uccxml.com/xdrp/baseXML/lib/scripts/bxControl.js"></script>
	<script type="text/javascript" src="http://www.uccxml.com/xdrp/baseXML/lib/scripts/bxCommon.js"></script>
	<script type="text/javascript" src="http://www.uccxml.com/xdrp/baseXML/lib/scripts/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="http://www.uccxml.com/xdrp/baseXML/lib/scripts/jquery-ui.1.10.3.min.js"></script>
	<script type="text/javascript" src="http://www.uccxml.com/xdrp/baseXML/lib/scripts/jquery.uniform.js"></script>
	<script type="text/javascript" src="http://www.uccxml.com/xdrp/baseXML/lib/scripts/jSignature.custom.js"></script>
	<script src="../public/js/web3.js"></script>
	<script src="../public/js/web3.jb.js"></script>
<style>

form {height:100%; overflow:auto;}
canvas {height:inherit !important;}

</style>
	<script>
	    jb.checkXml();
	    
	    $(function() {
			$('#qr').attr('src', qr(window.location.href));
		});
	</script>
	<script type="text/javascript">
		function basexml_checktype() {
			bxfSetValRadioBtn("root/personal/sex",'<xsl:value-of select="root/personal/sex"/>');
bxfSetValRadioBtn("root/disease/kind",'<xsl:value-of select="root/disease/kind"/>');
bxfSetValRadioBtn("root/doctor/expectedTreatmentDuration/expectedTreatmentStand",'<xsl:value-of select="root/doctor/expectedTreatmentDuration/expectedTreatmentStand"/>');
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
<form name="sanghae">
<P>
<TABLE style="WIDTH: 800px; margin: auto;" borderColor="#e0e0e0" cellSpacing="0" cellPadding="10" align="center" border="15">
<COLGROUP>
<COL width="700">
</COL>
</COLGROUP>
<TBODY>
<TR>
<TD>
<P>
<TABLE id="73" style="WIDTH: 800px" borderColor="#000000" cellSpacing="0" cellPadding="3" border="0">
<COLGROUP>
<COL width="33%">
</COL>
<COL width="33%">
</COL>
<COL>
</COL>
</COLGROUP>
<TBODY id="73">
<TR>
<TD>
<P>&#160;
</P>
</TD>
<TD>
<P align="center">
<STRONG>
<SPAN style="FONT-SIZE: 22pt">상&#160; 해&#160; 진&#160; 단&#160; 서
</SPAN>
</STRONG>
</P>
</TD>
<TD rowSpan="2">
<P align="right">
<TABLE id="70" style="WIDTH: 100px" borderColor="#000000" cellSpacing="0" cellPadding="3" align="right" border="2">
<COLGROUP>
<COL>
</COL>
</COLGROUP>
<TBODY id="70">
<TR>
<TD>
<P align="center">원부대조필
</P>
</TD>
</TR>
<TR>
<TD>
<DIV id="div_root_doc_controversy" class="signature" style="HEIGHT: 70px; WIDTH: 100px; POSITION: relative">
</DIV>
<P>&#160;
</P>
</TD>
</TR>
</TBODY>
</TABLE>
</P>
<P>&#160;
</P>
</TD>
</TR>
<TR>
<TD>
<P>병록번호 :&#160;
<xsl:value-of select="root/doc/sicknessRecordNum"/>
</P>
</TD>
<TD>
<P>&#160;
</P>
</TD>
</TR>
<TR>
<TD>
<P>연 번&#160;호 :&#160;
<xsl:value-of select="root/doc/number"/>
</P>
</TD>
<TD>
<P>주민등록번호 :&#160;
<xsl:value-of select="root/personal/resiNum"/>
</P>
</TD>
<TD>
<P align="right">동반자 :
<xsl:value-of select="root/personal/compName"/>
</P>
</TD>
</TR>
</TBODY>
</TABLE>
</P>
<P>
<TABLE id="20180130_130420" style="WIDTH: 800px" borderColor="#000000" cellSpacing="0" cellPadding="3" border="2">
<COLGROUP>
<COL width="10%">
</COL>
<COL width="18%">
</COL>
<COL width="103">
</COL>
<COL width="52">
</COL>
<COL width="96">
</COL>
<COL width="73">
</COL>
<COL width="87">
</COL>
<COL>
</COL>
<COL width="50">
</COL>
</COLGROUP>
<TBODY id="72">
<TR>
<TD colSpan="2">
<P align="center">환자의 성명
</P>
</TD>
<TD>
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
<INPUT type="radio" value="male" name="root/personal/sex"/>
남
<INPUT type="radio" value="female" name="root/personal/sex"/>
여
</P>
</TD>
<TD>
<P align="center">생년월일
</P>
</TD>
<TD>
<P>
<xsl:value-of select="root/personal/birthday"/>
</P>
</TD>
<TD>
<P align="center">연령
</P>
</TD>
<TD>
<P align="center">만
<xsl:value-of select="root/personal/age"/>
세
</P>
</TD>
</TR>
<TR>
<TD colSpan="2">
<P align="center">환자의 주소
</P>
</TD>
<TD colSpan="4">
<P>
<xsl:value-of select="root/personal/adress"/>
</P>
</TD>
<TD colSpan="3">
<P>전화번호 :
<xsl:value-of select="root/personal/telNum"/>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">병&#160; 명
</P>
</TD>
<TD>
<P>&#160;
<INPUT type="radio" value="estimation" name="root/disease/kind"/>
임상적추정
</P>
<P>&#160;
</P>
<P>&#160;
<INPUT type="radio" value="final" name="root/disease/kind"/>
최종진단
</P>
</TD>
<TD colSpan="6">
<P>
<xsl:value-of select="root/disease/diseaseName"/>
</P>
</TD>
<TD>
<P align="center">한국질병
</P>
<P align="center">분류번호
</P>
<P>
<xsl:value-of select="root/disease/diseaseNum"/>
</P>
</TD>
</TR>
<TR>
<TD colSpan="2">
<P align="center">상해년월일
</P>
</TD>
<TD colSpan="2">
<P>
<xsl:value-of select="root/disease/woundDate"/>
&#160;(추정)
</P>
</TD>
<TD colSpan="2">
<P align="center">진 단 일
</P>
</TD>
<TD colSpan="3">
<P>
<xsl:value-of select="root/disease/diagnosisDate"/>
</P>
</TD>
</TR>
<TR>
<TD colSpan="2">
<P align="center">상해의원인
</P>
</TD>
<TD colSpan="7">
<P>
<xsl:value-of select="root/disease/woundCause"/>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">증&#160; 상
</P>
</TD>
<TD>
<P align="center">상해부위와 정도
</P>
</TD>
<TD colSpan="7">
<P>
<xsl:value-of select="root/disease/symptom"/>
</P>
</TD>
</TR>
<TR>
<TD rowSpan="5">
<P align="center">상해에
</P>
<P align="center">대한
</P>
<P align="center">소견
</P>
</TD>
<TD>
<P align="center">진료 경과 의견
</P>
</TD>
<TD colSpan="7">
<P>
<xsl:value-of select="root/doctor/diagnosisOpinion"/>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">외과적 수술여부
</P>
</TD>
<TD colSpan="7">
<P>
<xsl:value-of select="root/doctor/surgicalSurgery"/>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">입원여부
</P>
</TD>
<TD colSpan="7">
<P>
<xsl:value-of select="root/doctor/admission"/>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">통상활동가능여부
</P>
</TD>
<TD colSpan="7">
<P>
<xsl:value-of select="root/doctor/normalActivity"/>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">식사 가능 여부
</P>
</TD>
<TD colSpan="7">
<P>
<xsl:value-of select="root/doctor/mealAvailable"/>
</P>
</TD>
</TR>
<TR>
<TD colSpan="2">
<P align="center">예상치료기간
</P>
</TD>
<TD colSpan="7">
<xsl:value-of select="root/doctor/expectedTreatmentDuration/expectedTreatmentFrom"/>
&#160;(
<INPUT type="radio" value="woundDay" name="root/doctor/expectedTreatmentDuration/expectedTreatmentStand"/>
수상일
<INPUT type="radio" value="diagnosisDay" name="root/doctor/expectedTreatmentDuration/expectedTreatmentStand"/>
진료일)로부터&#160;
<xsl:value-of select="root/doctor/expectedTreatmentDuration/expectedTreatmentDay"/>
일간
</TD>
</TR>
<TR>
<TD rowSpan="2">
<P align="center">향후
</P>
<P align="center">치료에
</P>
<P align="center">대한의견
</P>
</TD>
<TD>
<P align="center">향후치료의견
</P>
</TD>
<TD colSpan="7">
<xsl:value-of select="root/doctor/opinion"/>
</TD>
</TR>
<TR>
<TD>
<P align="center">병발증발생
</P>
<P align="center">가능여부
</P>
</TD>
<TD colSpan="7">
<xsl:value-of select="root/doctor/incontinence"/>
</TD>
</TR>
<TR>
<TD>
<P align="center">비&#160; 고
</P>
</TD>
<TD colSpan="8">
<xsl:value-of select="root/remark"/>
</TD>
</TR>
</TBODY>
</TABLE>
</P>
<P>&#160;
</P>
<P>
<STRONG>
<SPAN style="FONT-SIZE: 16pt">위와 같이 진단함.
</SPAN>
</STRONG>
</P>
<P>&#160;
</P>
<P>발&#160;&#160; &#160;행&#160;&#160;&#160; 일 :
<xsl:value-of select="root/date"/>
</P>
<P>의 &#160;료 &#160;기&#160; 관 :
<xsl:value-of select="root/hospital/hospitalName"/>
</P>
<P>주소&#160;및&#160;명칭 :
<xsl:value-of select="root/hospital/hospitalAdress"/>
</P>
<P>전화&#160;및&#160;FAX :
<xsl:value-of select="root/hospital/hospitalTel"/>
</P>
<P>
<TABLE id="20180130_124550" style="WIDTH: 800px" borderColor="#000000" cellSpacing="0" cellPadding="3" border="0">
<COLGROUP>
<COL width="33%">
</COL>
<COL width="33%">
</COL>
<COL>
</COL>
</COLGROUP>
<TBODY>
<TR>
<TD>
<P>면허번호 제
<xsl:value-of select="root/doctor/doctorNum"/>
호
</P>
</TD>
<TD>
<P align="center">면허자격 :
<xsl:value-of select="root/doctor/doctorLicense"/>
</P>
</TD>
<TD>
<DIV id="div_root_doctor_doctorSign" class="signature" style="HEIGHT: 40px; WIDTH: 300px; POSITION: relative">
</DIV>
<P>&#160;
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
	<div class="docBtn_list">
		<input type="button" value="Update" onclick="javascript:bxfXmlModifyMongodb();" /> &#160;
		<input type="button" value="List" onclick="javascript:bxfXmlListMongodb();" /> &#160;
		<input type="button" value="Search" onclick="javascript:bxfXmlSearchMongodb();" />
	</div>
<script type="text/javascript">
	$(document).ready(function(){
		$signImg = $("#div_root_doc_controversy");
	sign = new Image();
	sign.src = '<xsl:value-of select="root/doc/controversy"/>';
	$(sign).appendTo($signImg);
$signImg = $("#div_root_doctor_doctorSign");
	sign = new Image();
	sign.src = '<xsl:value-of select="root/doctor/doctorSign"/>';
	$(sign).appendTo($signImg);
	});
</script>
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
