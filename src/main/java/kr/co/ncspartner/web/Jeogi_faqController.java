
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
import kr.co.ncspartner.service.Jeogi_faqService;

import kr.co.ncspartner.util.AjaxUtil;
import kr.co.ncspartner.vo.B_gesiVO;
import kr.co.ncspartner.vo.Jeogi_faqVO;






@Controller
public class Jeogi_faqController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(Jeogi_faqController.class);

	@Resource(name = "jeogi_faqService")
	private Jeogi_faqService jeogi_faqService;

	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;
	
	
	@RequestMapping(value = "/jeogi_faq_select.do")
	public String do_jeogi_faq_select(@ModelAttribute("pvo") Jeogi_faqVO vo, ModelMap model) throws Exception {
		
		LOGGER.debug("--------------------------------//jeogi_faq_select.do");
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

		List<?> list = jeogi_faqService.selectList(vo);
		model.addAttribute("list", list);

		int totCnt = jeogi_faqService.selectListTotCnt(vo);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);

		return "jeogi_faq/jeogi_faq_select";
	}	
	
	
	@RequestMapping(value = "/jeogi_faq_detail.do")
	public String do_jeogi_faq_detail(@ModelAttribute("pvo") Jeogi_faqVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//jeogi_faq_detail.do");
		LOGGER.debug(vo.toString());
		
		Jeogi_faqVO rvo = jeogi_faqService.select(vo);
		model.addAttribute("rvo", rvo);
		return "jeogi_faq/jeogi_faq_detail";
	}
	
	
	@RequestMapping(value = "/jeogi_faq_insert.do")
	public String do_jeogi_faq_insert(@ModelAttribute("pvo") Jeogi_faqVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//jeogi_faq_insert.do");
		LOGGER.debug(vo.toString());		
		return "jeogi_faq/jeogi_faq_insert";
	}		
	
	@RequestMapping(value = "/jeogi_faq_insert_act.do")
	public String do_jeogi_faq_insert_act(@ModelAttribute("pvo") Jeogi_faqVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//jeogi_faq_insert_act.do");
		LOGGER.debug(vo.toString());		
		
		
		
		int cnt = jeogi_faqService.insert(vo);
		model.addAttribute("cnt", cnt);
		return "jeogi_faq/jeogi_faq_insert_act";
	}	

	@RequestMapping(value = "/jeogi_faq_update.do")
	public String do_jeogi_faq_update(@ModelAttribute("pvo") Jeogi_faqVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//jeogi_faq_update.do");
		LOGGER.debug(vo.toString());		
		Jeogi_faqVO rvo = jeogi_faqService.select(vo);
		model.addAttribute("rvo", rvo);
		return "jeogi_faq/jeogi_faq_update";
	}	
	
	
}
