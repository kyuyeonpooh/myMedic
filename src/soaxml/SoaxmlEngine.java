package soaxml;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;

public class SoaxmlEngine {
	
	private static native String engine(String paramString1, String paramString2, String paramString3);
	
	public static String getXML(String inXML, String calXML, String password) {
		if (password == null) {
			password = "";
		}
		return engine(inXML, calXML, password);
	}
	
	public static String getXMLApi(String inXML, String calXML, String password) {
		String output = "";
		try {
	        CloseableHttpClient httpClient = HttpClients.createDefault();
	        HttpPost httpPost = new HttpPost("http://edu.ai-xml.com//soaxmlEngineRemote.jsp");
	        System.out.println(httpPost);
	        List<NameValuePair> urlParameters = new ArrayList<NameValuePair>();
	        urlParameters.add(new BasicNameValuePair("s_inXML", inXML));
	        urlParameters.add(new BasicNameValuePair("s_calXML", calXML));
	        System.out.println(calXML);
	 
	        HttpEntity postParams = new UrlEncodedFormEntity(urlParameters, "UTF-8");
	        httpPost.setEntity(postParams);
	        CloseableHttpResponse httpResponse = httpClient.execute(httpPost);
	        System.out.println("POST Response Status:: "+ httpResponse.getStatusLine().getStatusCode());
	 
	        BufferedReader reader = new BufferedReader(new InputStreamReader(
	                httpResponse.getEntity().getContent(), "UTF-8"));
	 
	        String inputLine;
	 
	        while ((inputLine = reader.readLine()) != null) {
	        	output = output + inputLine;
	        }
	        System.out.println("output : "+output);
	        reader.close();
	        httpResponse.close();
	        httpClient.close();			
		} catch (Exception e) {
			System.out.println("Error : " + e.getMessage());
		}
		return output.trim();
	}
}