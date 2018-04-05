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
	<title> Prescription </title>
	<link rel="shortcut icon" href="http://www.3ksoftware.com/favicon.ico"/>
	<link type="text/css" href="http://www.uccxml.com/xdrp/baseXML/lib/css/soaxml_common.css" rel="stylesheet"  media="screen"/>
	<link type="text/css" href="http://www.uccxml.com/xdrp/baseXML/lib/css/uniform.default.css" rel="stylesheet" media="screen" />
	<link type="text/css" href="http://www.uccxml.com/xdrp/baseXML/lib/css/jquery-ui.1.10.3.smoothness.css" rel="stylesheet" media="screen" />
	<style></style>
<style>

form {height:100%; overflow:auto;}
canvas {height:inherit !important;}

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
			bxfSetValCheckBox("root/rootTrivia",'<xsl:value-of select="root/rootTrivia"/>');
bxfSetValComboBox("root/doseNo/doseNo1",'<xsl:value-of select="root/doseNo/doseNo1"/>');
bxfSetValComboBox("root/doseNo/doseNo2",'<xsl:value-of select="root/doseNo/doseNo2"/>');
bxfSetValComboBox("root/doseNo/doseNo3",'<xsl:value-of select="root/doseNo/doseNo3"/>');
bxfSetValComboBox("root/doseNo/doseNo4",'<xsl:value-of select="root/doseNo/doseNo4"/>');
bxfSetValComboBox("root/doseNo/doseNo5",'<xsl:value-of select="root/doseNo/doseNo5"/>');
bxfSetValComboBox("root/doseNo/doseNo6",'<xsl:value-of select="root/doseNo/doseNo6"/>');
bxfSetValComboBox("root/doseNo/doseNo7",'<xsl:value-of select="root/doseNo/doseNo7"/>');
bxfSetValComboBox("root/doseNo/doseNo8",'<xsl:value-of select="root/doseNo/doseNo8"/>');
bxfSetValComboBox("root/doseNo/doseNo9",'<xsl:value-of select="root/doseNo/doseNo9"/>');
bxfSetValComboBox("root/doseNo/doseNo10",'<xsl:value-of select="root/doseNo/doseNo10"/>');
bxfSetValComboBox("root/doseNo/doseNO11",'<xsl:value-of select="root/doseNo/doseNO11"/>');
bxfSetValComboBox("root/doseNo/doseNo12",'<xsl:value-of select="root/doseNo/doseNo12"/>');
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
<form name="scription">
<P>
<TABLE style="HEIGHT: 532px; WIDTH: 844px; margin: auto;" borderColor="#000000" cellSpacing="0" cellPadding="8" align="center" border="4">
<COLGROUP>
<COL width="700">
</COL>
</COLGROUP>
<TBODY>
<TR>
<TD>
<P align="center">
<SPAN style="FONT-SIZE: 8pt">
</SPAN>
</P>
<P align="center">
<SPAN style="FONT-SIZE: 10pt">
</SPAN>
</P>
<P align="center">
<SPAN style="FONT-SIZE: 28pt">처&#160;&#160;&#160;방&#160;&#160;&#160;전
</SPAN>
</P>
<P align="center">
<SPAN style="FONT-SIZE: 10pt">&#160;
</SPAN>
</P>
<P align="center">
<SPAN style="FONT-SIZE: 9pt">
</SPAN>
</P>
<P>&#160;
<INPUT type="checkbox" value="MI" name="root/rootTrivia"/>
의료보험
<INPUT type="checkbox" value="MP" name="root/rootTrivia"/>
의료급여
<INPUT type="checkbox" value="II" name="root/rootTrivia"/>
산재보험
<INPUT type="checkbox" value="CI" name="root/rootTrivia"/>
자동차보험
<INPUT type="checkbox" value="etc" name="root/rootTrivia"/>
기타(
<xsl:value-of select="root/rootTrivia/triviaEtc"/>
)
</P>
<P>
<TABLE id="33" style="HEIGHT: 160px; WIDTH: 857px" borderColor="#000000" cellSpacing="0" cellPadding="3" border="2">
<COLGROUP>
<COL width="20">
</COL>
<COL width="100">
</COL>
<COL width="132">
</COL>
<COL width="20">
</COL>
<COL width="116">
</COL>
<COL width="200">
</COL>
</COLGROUP>
<TBODY id="33">
<TR>
<TD colSpan="2">
<P align="center">
<STRONG>교부일자
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/patient/patientDate"/>
</P>
</TD>
<TD rowSpan="4">
<P align="center">
<STRONG>의
</STRONG>
</P>
<P align="center">
<STRONG>료
</STRONG>
</P>
<P align="center">
<STRONG>기
</STRONG>
</P>
<P align="center">
<STRONG>관
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<STRONG>명 칭
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/Ins/insName"/>
</P>
</TD>
</TR>
<TR>
<TD colSpan="2">
<P align="center">
<STRONG>교부번호
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/patient/patientNo"/>
</P>
</TD>
<TD>
<P align="center">
<STRONG>전화번호
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/Ins/insTel"/>
</P>
</TD>
</TR>
<TR>
<TD rowSpan="2">
<P align="center">
<STRONG>환
</STRONG>
</P>
<P align="center">
<STRONG>자
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<STRONG>성 명
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/patient/patientName"/>
</P>
</TD>
<TD>
<P align="center">
<STRONG>팩스번호
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/Ins/insFax"/>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">
<STRONG>주민등록번호
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/patient/patientID"/>
-
<xsl:value-of select="root/patient/patientIDs"/>
</P>
</TD>
<TD>
<P align="center">
<STRONG>e-mail주소
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/Ins/inEmail"/>
@
<xsl:value-of select="root/Ins/insEmails"/>
</P>
</TD>
</TR>
</TBODY>
</TABLE>
</P>
<DIV align="center">
<TABLE id="20180127_193907" style="HEIGHT: 48px; WIDTH: 858px" borderColor="#000000" cellSpacing="0" cellPadding="3" align="center" border="1">
<COLGROUP>
<STRONG>
<COL width="50">
</COL>
<COL width="40">
</COL>
<COL width="40">
</COL>
<COL width="40">
</COL>
<COL width="40">
</COL>
<COL width="40">
</COL>
<COL width="100">
</COL>
<COL width="100">
</COL>
<COL width="70">
</COL>
<COL width="150">
</COL>
</STRONG>
</COLGROUP>
<TBODY id="32">
<TR>
<TD rowSpan="2">
<P align="center">
<STRONG>질병
</STRONG>
</P>
<P align="center">
<STRONG>분류
</STRONG>
</P>
<P align="center">
<STRONG>기호
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/sort/sor1"/>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/sort/sort2"/>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/sort/sort3"/>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/sort/sort4"/>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/sort/sort5"/>
</P>
</TD>
<TD rowSpan="2">
<P align="center">
<STRONG>처방의료인의 성명
</STRONG>
</P>
</TD>
<TD rowSpan="2">
<P align="center">
<xsl:value-of select="root/doctor/doctorName"/>
</P>
</TD>
<TD>
<P align="center">
<STRONG>면허종별
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doctor/doctorSpecies"/>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">
<xsl:value-of select="root/sort/sort6"/>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/sort/sort7"/>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/sort/sort8"/>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/sort/sort9"/>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/sort/sort10"/>
</P>
</TD>
<TD>
<P align="center">
<STRONG>면허번호
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doctor/doctorNo"/>
</P>
</TD>
</TR>
</TBODY>
</TABLE>
</DIV>
<P align="center">
</P>
<P align="center">* 환자의 요구가 있을 때에는 질병분류기호를 기재하지 아니합니다.
</P>
<P align="center">
</P>
<P align="center">
<TABLE style="HEIGHT: 191px; WIDTH: 857px" borderColor="#000000" cellSpacing="0" cellPadding="3" border="2">
<COLGROUP>
<COL width="47%">
</COL>
<COL width="71">
</COL>
<COL width="141">
</COL>
<COL width="141">
</COL>
<COL width="141">
</COL>
<COL width="26%">
</COL>
</COLGROUP>
<TBODY>
<TR>
<TD colSpan="2">
<P align="center">
<STRONG>처방의약품의 명칭
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<STRONG>1회
</STRONG>
</P>
<P align="center">
<STRONG>투약량
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<STRONG>1일
</STRONG>
</P>
<P align="center">
<STRONG>투여횟수
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<STRONG>총
</STRONG>
</P>
<P align="center">
<STRONG>투약
</STRONG>
</P>
<P align="center">
<STRONG>일수
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<STRONG>용 범
</STRONG>
</P>
</TD>
</TR>
<TR>
<TD colSpan="2">
<P align="center">
<xsl:value-of select="root/pillName/pillName1"/>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseper/dosePer1"/>
</P>
</TD>
<TD>
<P align="center">
<SELECT name="root/doseNo/doseNo1">
<OPTION selected="selected" value="1">1
</OPTION>
<OPTION value="2">2
</OPTION>
<OPTION value="3">3
</OPTION>
<OPTION value="4">4
</OPTION>
<OPTION value="5">5
</OPTION>
</SELECT>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseday/doseDay1"/>
일
</P>
</TD>
<TD rowSpan="12">
<P align="center">
</P>
<P align="center">
</P>
<P align="center">
</P>
<P align="center">
</P>
<P align="center">
</P>
<P align="center">
<xsl:apply-templates select="root/trivia"/>&#160;
</P>
<P align="center">
</P>
<P align="center">
</P>
<P align="center">
</P>
<P align="center">
</P>
<P align="center">
</P>
<P>&#160;
</P>
</TD>
</TR>
<TR>
<TD colSpan="2">
<P align="center">
<xsl:value-of select="root/pillName/pillname2"/>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseper/dosePer2"/>
</P>
</TD>
<TD>
<P align="center">
<SELECT name="root/doseNo/doseNo2">
<OPTION selected="selected" value="1">1
</OPTION>
<OPTION value="2">2
</OPTION>
<OPTION value="3">3
</OPTION>
<OPTION value="4">4
</OPTION>
<OPTION value="5">5
</OPTION>
</SELECT>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseday/doseDay2"/>
일
</P>
</TD>
</TR>
<TR>
<TD colSpan="2">
<P align="center">
<xsl:value-of select="root/pillName/pillName3"/>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseper/dosePer3"/>
</P>
</TD>
<TD>
<P align="center">
<SELECT name="root/doseNo/doseNo3">
<OPTION selected="selected" value="1">1
</OPTION>
<OPTION value="2">2
</OPTION>
<OPTION value="3">3
</OPTION>
<OPTION value="4">4
</OPTION>
<OPTION value="5">5
</OPTION>
</SELECT>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseday/doseDay3"/>
일
</P>
</TD>
</TR>
<TR>
<TD colSpan="2">
<P align="center">
<xsl:value-of select="root/pillName/pillName4"/>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseper/dosePer4"/>
</P>
</TD>
<TD>
<P align="center">
<SELECT name="root/doseNo/doseNo4">
<OPTION selected="selected" value="1">1
</OPTION>
<OPTION value="2">2
</OPTION>
<OPTION value="3">3
</OPTION>
<OPTION value="4">4
</OPTION>
<OPTION value="5">5
</OPTION>
</SELECT>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseday/doseDay4"/>
일
</P>
</TD>
</TR>
<TR>
<TD colSpan="2">
<P align="center">
<xsl:value-of select="root/pillName/pillName5"/>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseper/dosePer5"/>
</P>
</TD>
<TD>
<P align="center">
<SELECT name="root/doseNo/doseNo5">
<OPTION selected="selected" value="1">1
</OPTION>
<OPTION value="2">2
</OPTION>
<OPTION value="3">3
</OPTION>
<OPTION value="4">4
</OPTION>
<OPTION value="5">5
</OPTION>
</SELECT>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseday/doseday5"/>
일
</P>
</TD>
</TR>
<TR>
<TD colSpan="2">
<P align="center">
<xsl:value-of select="root/pillName/pillName6"/>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseper/dosePer6"/>
</P>
</TD>
<TD>
<P align="center">
<SELECT style="WIDTH: 37px" name="root/doseNo/doseNo6">
<OPTION selected="selected" value="1">1
</OPTION>
<OPTION value="2">2
</OPTION>
<OPTION value="3">3
</OPTION>
<OPTION value="4">4
</OPTION>
<OPTION value="5">5
</OPTION>
</SELECT>&#160;
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseday/doseDay6"/>
일
</P>
</TD>
</TR>
<TR>
<TD colSpan="2">
<P align="center">
<xsl:value-of select="root/pillName/pillName7"/>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseper/dosePer7"/>
</P>
</TD>
<TD>
<P align="center">
<SELECT name="root/doseNo/doseNo7">
<OPTION selected="selected" value="1">1
</OPTION>
<OPTION value="2">2
</OPTION>
<OPTION value="3">3
</OPTION>
<OPTION value="4">4
</OPTION>
<OPTION value="5">5
</OPTION>
</SELECT>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseday/doseDay7"/>
일
</P>
</TD>
</TR>
<TR>
<TD colSpan="2">
<P align="center">
<xsl:value-of select="root/pillName/pillName8"/>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseper/dosePer8"/>
</P>
</TD>
<TD>
<P align="center">
<SELECT name="root/doseNo/doseNo8">
<OPTION selected="selected" value="1">1
</OPTION>
<OPTION value="2">2
</OPTION>
<OPTION value="3">3
</OPTION>
<OPTION value="4">4
</OPTION>
<OPTION value="5">5
</OPTION>
</SELECT>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseday/doseDay8"/>
일
</P>
</TD>
</TR>
<TR>
<TD colSpan="2">
<P align="center">
<xsl:value-of select="root/pillName/pillName9"/>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseper/dosePer9"/>
</P>
</TD>
<TD>
<P align="center">
<SELECT name="root/doseNo/doseNo9">
<OPTION selected="selected" value="1">1
</OPTION>
<OPTION value="2">2
</OPTION>
<OPTION value="3">3
</OPTION>
<OPTION value="4">4
</OPTION>
<OPTION value="5">5
</OPTION>
</SELECT>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseday/doseDay9"/>
일
</P>
</TD>
</TR>
<TR>
<TD colSpan="2">
<P align="center">
<xsl:value-of select="root/pillName/pillName10"/>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseper/dosePer10"/>
</P>
</TD>
<TD>
<P align="center">
<SELECT name="root/doseNo/doseNo10">
<OPTION selected="selected" value="1">1
</OPTION>
<OPTION value="2">2
</OPTION>
<OPTION value="3">3
</OPTION>
<OPTION value="4">4
</OPTION>
<OPTION value="5">5
</OPTION>
</SELECT>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseday/doseDay10"/>
일
</P>
</TD>
</TR>
<TR>
<TD colSpan="2">
<P align="center">
<xsl:value-of select="root/pillName/pillName11"/>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseper/dosePer11"/>
</P>
</TD>
<TD>
<P align="center">
<SELECT name="root/doseNo/doseNO11">
<OPTION selected="selected" value="1">1
</OPTION>
<OPTION value="2">2
</OPTION>
<OPTION value="3">3
</OPTION>
<OPTION value="4">4
</OPTION>
<OPTION value="5">5
</OPTION>
</SELECT>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseday/doseDay11"/>
일
</P>
</TD>
</TR>
<TR>
<TD colSpan="2">
<P align="center">
<xsl:value-of select="root/pillName/pillName12"/>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseper/dosePer12"/>
</P>
</TD>
<TD>
<P align="center">
<SELECT name="root/doseNo/doseNo12">
<OPTION selected="selected" value="1">1
</OPTION>
<OPTION value="2">2
</OPTION>
<OPTION value="3">3
</OPTION>
<OPTION value="4">4
</OPTION>
<OPTION value="5">5
</OPTION>
</SELECT>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/doseday/doseDay12"/>
일
</P>
</TD>
</TR>
<TR>
<TD colSpan="5">
<P align="center">
<STRONG>주사제 처방내역
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<STRONG>조제시 참고사항
</STRONG>
</P>
</TD>
</TR>
<TR>
<TD rowSpan="8" colSpan="5">
<P align="center">
<xsl:apply-templates select="root/injection/injectionBody"/>&#160;
</P>
</TD>
<TD rowSpan="8">
<P align="center">
<xsl:apply-templates select="root/injection/medicineTrivia"/>&#160;
</P>
</TD>
</TR>
<TR>
</TR>
<TR>
</TR>
<TR>
</TR>
<TR>
</TR>
<TR>
</TR>
<TR>
</TR>
<TR>
</TR>
</TBODY>
</TABLE>
</P>
<P align="center">
<TABLE id="19" style="HEIGHT: 26px; WIDTH: 857px" borderColor="#000000" cellSpacing="0" cellPadding="3" border="2">
<COLGROUP>
<COL width="10%">
</COL>
<COL width="288">
</COL>
<COL>
</COL>
</COLGROUP>
<TBODY id="19">
<TR>
<TD>
<P align="center">사용기간
</P>
</TD>
<TD>
<P align="center">교부일로부터 (
<xsl:value-of select="root/useDate/useDay"/>
) 일간
</P>
</TD>
<TD>
<P align="center">
<FONT color="#ff0000">
<U>사용기간내에 약국에 제출하여야 합니다.
</U>
</FONT>
</P>
</TD>
</TR>
</TBODY>
</TABLE>
</P>
<P align="center">
<TABLE id="20180127_195325" style="HEIGHT: 172px; WIDTH: 858px" borderColor="#000000" cellSpacing="0" cellPadding="3" border="2">
<COLGROUP>
<COL width="25">
</COL>
<COL width="176">
</COL>
<COL width="250">
</COL>
<COL>
</COL>
</COLGROUP>
<TBODY id="56">
<TR>
<TD colSpan="4">
<P align="center">
<STRONG>의약품 조제내역
</STRONG>
</P>
</TD>
</TR>
<TR>
<TD rowSpan="5">
<P align="center">
<STRONG>조제내역
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<STRONG>조제기관의 명칭
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/prepare/perpareName"/>
</P>
</TD>
<TD>
<P align="center">
<STRONG>처방의 변경, 수정, 확인대체시 그 내용 등
</STRONG>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">
<STRONG>조제약사 성명
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/prepare/prepareName"/>
</P>
</TD>
<TD rowSpan="4">
<P align="center">
<xsl:apply-templates select="root/prepare/prepareTrivia"/>&#160;
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">
<STRONG>조제약사 서명
</STRONG>
</P>
</TD>
<TD>
<P align="center">
</P>
<DIV align="center">
<DIV id="div_root_prepare_prepareSign" class="signature" style="HEIGHT: 30px; WIDTH: 210px; POSITION: relative">
<DIV align="left">
</DIV>
</DIV>
</DIV>
<P align="center">
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">
<STRONG>조제량(조제일수)
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/prepare/prepareAmount"/>
</P>
</TD>
</TR>
<TR>
<TD>
<P align="center">
<STRONG>조제 년 월 일
</STRONG>
</P>
</TD>
<TD>
<P align="center">
<xsl:value-of select="root/prepare/prepareYearmonthday"/>
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
<script type="text/javascript">
	$(document).ready(function(){
		$signImg = $("#div_root_prepare_prepareSign");
	sign = new Image();
	sign.src = '<xsl:value-of select="root/prepare/prepareSign"/>';
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
