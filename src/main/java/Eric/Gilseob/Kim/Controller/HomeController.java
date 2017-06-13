package Eric.Gilseob.Kim.Controller;

import java.io.File;

import org.opencv.core.Core;
import org.opencv.core.CvType;
import org.opencv.core.Mat;
import org.opencv.imgproc.Imgproc;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "index_home";
	}
	
	@RequestMapping(value = "/openCV", method = RequestMethod.GET)
	public String openCV(Model model) {
		System.load(new File("C:\\Users\\kita\\git\\MaPageEK\\src\\main\\webapp\\resources\\opencv_java320.dll").getAbsolutePath());
		 Mat mat = new Mat();
		 Mat m  = Mat.eye(5, 5, CvType.CV_8UC1); 
		 model.addAttribute("test","m = " + m.dump()); 
		return "openCV";
	}
	
}