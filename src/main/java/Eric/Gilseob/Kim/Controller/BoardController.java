package Eric.Gilseob.Kim.Controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping(value = "board/board_index", method = RequestMethod.GET)
	public String board_index() {
		return "board/board_index";
	}

	@RequestMapping(value = "board/photoBoard", method = RequestMethod.GET)
	public String photoBoard() {
		return "board/photoBoard";
	}
}
