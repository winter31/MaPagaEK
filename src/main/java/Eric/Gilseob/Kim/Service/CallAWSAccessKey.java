package Eric.Gilseob.Kim.Service;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;

public class CallAWSAccessKey {
	
	private String keyAddress = "c://";
	private File accessKey = new File(keyAddress);
	private FileInputStream fis;
	private ObjectInputStream ois;
	
	public CallAWSAccessKey() {
		// TODO Auto-generated constructor stub
		try {
			fis = new FileInputStream(accessKey);
			ois = new ObjectInputStream(fis);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	//Access Key load into Spring for AWS S3
	public String[] getAccessKey(){
		String keys[] = null;
		try {
			keys = (String[]) ois.readObject();
			System.out.println(keys.toString());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return keys;
	}
	
}
