package soaxml;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class SoaxmlXMLCreate {
	public String createFile(String path, String content) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss", Locale.KOREA);
		String filename = simpleDateFormat.format(new Date()) + ".xml";
		
		try {
			File saveDir = new File(path);
			if(!saveDir.exists()) {
				saveDir.mkdir();
			}
			
			File file = new File(path + filename);
			
			FileOutputStream fileOutputStream = new FileOutputStream(file);
			OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream, "UTF-8");
			BufferedWriter bufferedWriter = new BufferedWriter(outputStreamWriter);
			bufferedWriter.write(content);
			bufferedWriter.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return filename;
	}
}