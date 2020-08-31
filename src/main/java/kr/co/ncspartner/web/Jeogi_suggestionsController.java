
package kr.co.ncspartner.web;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import kr.co.ncspartner.service.Jeogi_suggestionsService;
import kr.co.ncspartner.util.AjaxUtil;
import kr.co.ncspartner.vo.B_gesiVO;
import kr.co.ncspartner.vo.Jeogi_suggestionsVO;




@Controller
public class Jeogi_suggestionsController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(Jeogi_suggestionsController.class);

	@Resource(name = "jeogi_suggestionsService")
	private Jeogi_suggestionsService jeogi_suggestionsService;

	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;
	
	
	@RequestMapping(value = "/jeogi_suggestions_select.do")
	public String do_jeogi_suggestions_select(@ModelAttribute("pvo") Jeogi_suggestionsVO vo, ModelMap model) throws Exception {
		
		LOGGER.debug("--------------------------------//jeogi_suggestions_select.do");
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

		List<?> list = jeogi_suggestionsService.selectList(vo);
		model.addAttribute("list", list);

		int totCnt = jeogi_suggestionsService.selectListTotCnt(vo);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);

		return "jeogi_suggestions/jeogi_suggestions_select";
	}	
	
	
	@RequestMapping(value = "/jeogi_suggestions_detail.do")
	public String do_jeogi_suggestions_detail(@ModelAttribute("pvo") Jeogi_suggestionsVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//jeogi_suggestions_detail.do");
		LOGGER.debug(vo.toString());
		
		Jeogi_suggestionsVO rvo = jeogi_suggestionsService.select(vo);
		model.addAttribute("rvo", rvo);
		return "jeogi_suggestions/jeogi_suggestions_detail";
	}
	
	
	@RequestMapping(value = "/jeogi_suggestions_insert.do")
	public String do_jeogi_suggestions_insert(@ModelAttribute("pvo") Jeogi_suggestionsVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//jeogi_suggestions_insert.do");
		LOGGER.debug(vo.toString());		
		return "jeogi_suggestions/jeogi_suggestions_insert";
	}		
	
	@RequestMapping(value = "/jeogi_suggestions_insert_act.do")
	public String do_jeogi_suggestions_insert_act(@ModelAttribute("pvo") Jeogi_suggestionsVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//jeogi_suggestions_insert_act.do");
		LOGGER.debug(vo.toString());		
		
		int cnt = jeogi_suggestionsService.insert(vo);
		
		
		LOGGER.debug(cnt+"");
		model.addAttribute("cnt", cnt);
		return "jeogi_suggestions/jeogi_suggestions_insert_act";
	}	
	

	
	@RequestMapping(value = "/jeogi_suggestions_update.do")
	public String do_jeogi_suggestions_update(@ModelAttribute("pvo") Jeogi_suggestionsVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//jeogi_suggestions_update.do");
		LOGGER.debug(vo.toString());		
		Jeogi_suggestionsVO rvo = jeogi_suggestionsService.select(vo);
		model.addAttribute("rvo", rvo);
		return "jeogi_suggestions/jeogi_suggestions_update";
	}	
	
	
}
