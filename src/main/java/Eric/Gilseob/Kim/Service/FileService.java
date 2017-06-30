package Eric.Gilseob.Kim.Service;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

public class FileService {

	public static String saveFile(MultipartFile mfile, String uploadPath) {
		
		if (mfile == null || mfile.isEmpty() || mfile.getSize() == 0) {
			return null;
		}
		
		File path = new File(uploadPath);
		if(!path.isDirectory()){
			path.mkdirs();
		}
		
		String originFileName = mfile.getOriginalFilename();
		String ext;
		int lastIndex = originFileName.lastIndexOf('.');
		if(lastIndex == -1){
			ext="";
		}else{
			ext="."+originFileName.substring(lastIndex+1);
			System.out.println("확장자명 확인 : "+ext);
		}
		File serverFile = null;
		while(true){
			serverFile = new File(uploadPath+"/"+originFileName);
			if(!serverFile.isFile()) 
				deleteFile(uploadPath,originFileName);
				break;
		}
		try{
			mfile.transferTo(serverFile);
		}catch(Exception e){
			originFileName = null;
			e.printStackTrace();
		}
		
		return originFileName;
	}
	
	public static boolean deleteFile(String uploadpath, String fullpath) {
		// 파일 삭제 여부를 리턴할 변수
		boolean result = false;
		// 전달된 전체 경로로 File객체 생성
		File delFile = new File(uploadpath + "/" + fullpath);

		// 해당 파일이 존재하면 삭제
		if (delFile.isFile()) {
			delFile.delete();
			/*delFile.delete();*/
			result = true;
		}
		return result;
	}
}
