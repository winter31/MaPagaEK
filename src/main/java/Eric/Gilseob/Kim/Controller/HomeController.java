package Eric.Gilseob.Kim.Controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.asprise.ocr.Ocr;

import Eric.Gilseob.Kim.Service.FileService;
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	private final String ocrPath = "C:/Users/kita/git/MaPageEK/src/main/webapp/resources/OcrFile";
	
	String filename;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {

		return "index_home";
	}
	
/*	@RequestMapping(value = "/openCV", method = RequestMethod.GET)
	public String openCV(Model model) {
		System.load(new File("C:\\Users\\kita\\git\\MaPageEK\\src\\main\\webapp\\resources\\opencv_java320.dll").getAbsolutePath());
		 Mat mat = new Mat();
		 Mat m  = Mat.eye(5, 5, CvType.CV_8UC1); 
		 model.addAttribute("test","m = " + m.dump()); 
		return "openCV";
	}*/
	
	
	//Ocr 화면 들어가기
	@RequestMapping(value = "/ocr", method = RequestMethod.GET)
	public String ocrTest() {
		Ocr.setUp();
		return "ocrTest";
	}
	//Ocr 기능 추가	
	@RequestMapping(value = "/ocr", method = RequestMethod.POST)
	public String ocrTest(Model model, MultipartFile uploadFile) {
		filename = FileService.saveFile(uploadFile, ocrPath);
		 // one time setup	
		Ocr ocr = new Ocr(); 
		// create a new OCR engine
		ocr.startEngine(Ocr.LANGUAGE_ENG, Ocr.SPEED_FASTEST); // English
		String s = ocr.recognize(new File[] {new File(ocrPath+"/"+filename)},
		Ocr.RECOGNIZE_TYPE_TEXT, Ocr.OUTPUT_FORMAT_PLAINTEXT); // PLAINTEXT | XML | PDF | RTF
		model.addAttribute("photo",filename);
		model.addAttribute("ocr",s);
		ocr.stopEngine(); 
		
		return "ocrTest";
	}
	// 파일 원본 보여주고 파일은 삭제
	@RequestMapping(value = "getPhoto", method = RequestMethod.GET)
	public void getMemberPhoto(String file_id, HttpServletResponse response, Model model) {
		if (!file_id.equals("") || file_id != null) {
			try {
				response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(file_id, "UTF-8"));
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			String fullpath = ocrPath + "/" + file_id;
			ServletOutputStream fileout = null;
			FileInputStream filein = null;
			try {
				fileout = response.getOutputStream();
				filein = new FileInputStream(fullpath);
				FileCopyUtils.copy(filein, fileout);
			} catch (IOException e) {
				logger.info("파일이 없습니다! : " + fullpath);
			} finally {
				try {
					if (fileout != null)
						fileout.close();
					if (filein != null)
						filein.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		FileService.deleteFile(ocrPath, filename);
	}
}
