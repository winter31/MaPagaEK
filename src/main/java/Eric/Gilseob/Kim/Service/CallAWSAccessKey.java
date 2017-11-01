package Eric.Gilseob.Kim.Service;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Reader;
import java.util.HashMap;

import javax.swing.plaf.basic.BasicInternalFrameTitlePane.IconifyAction;

public class CallAWSAccessKey {
	
	private String keyAddress = "C:\\Users\\GILSEOB\\Downloads\\rootkey.txt";
	private BufferedReader bufferReader;
	
	public CallAWSAccessKey() {
		// TODO Auto-generated constructor stub
	}
	//Access Key load into Spring for AWS S3
	public String[] getAccessKey(){
		String[] accessKeyList = new String[2];
		try {
			FileReader accessKey = new FileReader(new File(keyAddress));
			bufferReader = new BufferedReader(accessKey);
			String s;
			while ((s = bufferReader.readLine()) != null) {
			String[] split = s.split(" ");
			String accessKeyId = split[0].split("=")[1];
			String accessKeyPW = split[1].split("=")[1];
			accessKeyList[0] = accessKeyId;
			accessKeyList[1] = accessKeyPW;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return accessKeyList;
	}
	
}
