
package kr.co.ncspartner.web;

import java.net.URLDecoder;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

import kr.co.ncspartner.service.Jeogi_userService;
import kr.co.ncspartner.service.MessengerService;
import kr.co.ncspartner.vo.B_gesiVO;
import kr.co.ncspartner.vo.JeogiVO;
import kr.co.ncspartner.vo.Jeogi_userVO;
import kr.co.ncspartner.vo.MessengerVO;




@Controller
public class MessengerController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(MessengerController.class);

	@Resource(name = "messengerService")
	private MessengerService messengerService;

	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;
	
	
	@RequestMapping(value = "/messenger_select.do")
	public String do_messenger_select(@ModelAttribute("MessengerVO") MessengerVO vo, ModelMap model, HttpSession session) throws Exception {
		
		LOGGER.debug("--------------------------------//messenger_select.do");
		LOGGER.debug(vo.toString());

		vo.setPageUnit(propertiesService.getInt("pageUnit"));
		vo.setPageSize(propertiesService.getInt("pageSize"));

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(vo.getPageIndex());
		paginationInfo.setRecordCountPerPage(vo.getPageUnit());
		paginationInfo.setPageSize(vo.getPageSize());

		vo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		vo.setLastIndex(paginationInfo.getLastRecordIndex());
		vo.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
		Jeogi_userVO uvo = (Jeogi_userVO) session.getAttribute("userSession");
		vo.setUser_id(uvo.getUser_id());

		List<?> list = messengerService.getChatRooms(vo);
		model.addAttribute("list", list);

		int totCnt = messengerService.selectListTotCnt(vo);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);

		return "jeogi/messenger_select";
	}	
	//채팅 목록을 보여줌
	
	@RequestMapping(value = "/messenger_chatting.do")
	public String do_messenger_chatting(@ModelAttribute("MessengerVO") MessengerVO vo, ModelMap model) throws Exception {
		
		LOGGER.debug("--------------------------------//messenger_chatting.do");
		LOGGER.debug(vo.toString());

		vo.setPageUnit(propertiesService.getInt("pageUnit"));
		vo.setPageSize(propertiesService.getInt("pageSize"));

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(vo.getPageIndex());
		paginationInfo.setRecordCountPerPage(vo.getPageUnit());
		paginationInfo.setPageSize(vo.getPageSize());

		vo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		vo.setLastIndex(paginationInfo.getLastRecordIndex());
		vo.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

		List<?> list = messengerService.getChats(vo);
		model.addAttribute("list", list);

		int totCnt = messengerService.selectListTotCnt(vo);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);

		return "c/messenger_chatting";
	}	
		
		@RequestMapping(value = "/chat_insert_act.do")
		public String do_chat_insert_act(@ModelAttribute("MessengerVO") MessengerVO vo, ModelMap model, HttpSession session, HttpServletRequest request) throws Exception {
			LOGGER.debug("--------------------------------//chat_insert_act.do");
			LOGGER.debug(vo.toString());		

			String r_id = request.getParameter("r_id");
			System.out.println("r_id"+r_id);
			model.addAttribute("r_id",request.getParameter("r_id"));
			
			String ms_id = request.getParameter("ms_id");
			System.out.println("ms_id"+ms_id);
			model.addAttribute("ms_id",request.getParameter("ms_id"));
			
			
			Jeogi_userVO uvo = (Jeogi_userVO) session.getAttribute("userSession");
			vo.setUser_id(uvo.getUser_id());
			
			
//			String ms_message = vo.getMs_message();
//			
//			if (vo.getUser_id() == uvo.getUser_id()) {
//				vo.setMs_message(ms_message);
//			}
			
			int cnt = messengerService.insertmessage(vo);
			model.addAttribute("cnt", cnt);
			
			return "jeogi_act/chat_insert_act";
	}	
	
}
