<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@ page
	import="soaxml.SoaxmlEngine"
	import="soaxml.SoaxmlXMLCreate"
%>
<%!
	/* Common configuration */
	String basePath = "C:/JavaProject/myMedic/WebContent/"; // 프로젝트 경로
	String xmlPath = "xml/"; // xml 파일 저장 경로
	String path = basePath + xmlPath;
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Processing...</title>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="./public/js/web3.js"></script>
	<script src="./public/js/web3.jb.js"></script>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");

	String inXML = request.getParameter("inXMLcontent");
	String calXML = request.getParameter("calXMLcontent");
	String password = "";
		
	String xmlString = SoaxmlEngine.getXMLApi(inXML, calXML, password);
	
	String filename = null;
	
	if(request.getParameter("xmlPath") == null || request.getParameter("xmlPath").equals("")) {		
		SoaxmlXMLCreate soaxmlXMLCreate = new SoaxmlXMLCreate();
		filename = soaxmlXMLCreate.createFile(path, xmlString);
	%>
		<script>
			$(function() {
				jb.contract.issue('<%=request.getParameter("accountPatient")%>', <%=request.getParameter("formCategory")%>,'<%=filename%>', jb.web3.sha3('<%=xmlString%>'), {from: '<%=request.getParameter("account")%>', gas: 500000});		
				alert('해당 문서가 생성되었습니다.');
				location.href = './' + '<%=xmlPath%>' + '<%=filename%>';
			});
		</script>
	<%
	}
	%>
	<textarea id="xml" style="display: none;"><%=xmlString.trim()%></textarea>
</body>
</html>