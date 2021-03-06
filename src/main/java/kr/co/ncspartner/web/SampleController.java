
package kr.co.ncspartner.web;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import kr.co.ncspartner.service.SampleService;
import kr.co.ncspartner.vo.SampleVO;



@Controller
public class SampleController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(SampleController.class);

	@Resource(name = "sampleService")
	private SampleService sampleService;

	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;
	
	
	@RequestMapping(value = "/sample_select.do")
	public String do_sample_select(@ModelAttribute("sampleVO") SampleVO vo, ModelMap model) throws Exception {
		
		LOGGER.debug("--------------------------------//sample_select.do");
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

		List<?> list = sampleService.selectList(vo);
		model.addAttribute("list", list);

		int totCnt = sampleService.selectListTotCnt(vo);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);

		return "sample/sample_select";
	}	
	
	
	@RequestMapping(value = "/sample_detail.do")
	public String do_sample_detail(@ModelAttribute("sampleVO") SampleVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//sample_detail.do");
		LOGGER.debug(vo.toString());		
		SampleVO rvo = sampleService.select(vo);
		model.addAttribute("rvo", rvo);
		return "sample/sample_detail";
	}
	
	@RequestMapping(value = "/online.do")
	public String do_online(@ModelAttribute("sampleVO") SampleVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//sample_detail.do");
		LOGGER.debug(vo.toString());		

		return "sample/online";
	}
	
	@RequestMapping(value = "/online_detail.do")
	public String do_online_detail(@ModelAttribute("sampleVO") SampleVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//sample_detail.do");
		LOGGER.debug(vo.toString());		

		return "sample/online_detail";
	}
	
	
	@RequestMapping(value = "/sample_insert.do")
	public String do_sample_insert(@ModelAttribute("sampleVO") SampleVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//sample_insert.do");
		LOGGER.debug(vo.toString());		
		return "sample/sample_insert";
	}		
	
	@RequestMapping(value = "/sample_insert_act.do")
	public String do_sample_insert_act(@ModelAttribute("sampleVO") SampleVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//sample_insert_act.do");
		LOGGER.debug(vo.toString());		
		int cnt = sampleService.insert(vo);
		model.addAttribute("cnt", cnt);
		return "sample/sample_insert_act";
	}			
	
	
	@RequestMapping(value = "/sample_update.do")
	public String do_sample_update(@ModelAttribute("sampleVO") SampleVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//sample_update.do");
		LOGGER.debug(vo.toString());		
		SampleVO rvo = sampleService.select(vo);
		model.addAttribute("rvo", rvo);
		return "sample/sample_update";
	}	
	
	
	@RequestMapping(value = "/sample_update_act.do")
	public String do_sample_update_act(@ModelAttribute("sampleVO") SampleVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//sample_update_act.do");
		LOGGER.debug(vo.toString());		
		int cnt = sampleService.update(vo);
		model.addAttribute("cnt", cnt);
		return "sample/sample_update_act";
	}		
	
	@RequestMapping(value = "/sample_delete_act.do")
	public String do_sample_delete_act(@ModelAttribute("sampleVO") SampleVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//sample_delete_act.do");
		LOGGER.debug(vo.toString());		
		int cnt = sampleService.delete(vo);
		model.addAttribute("cnt", cnt);
		return "sample/sample_delete_act";
	}		
	@RequestMapping(value = "/notice.do")
	public String do_notice(@ModelAttribute("sampleVO") SampleVO vo, ModelMap model) throws Exception {

		return "sample/notice";
	}
	@RequestMapping(value = "/faq.do")
	public String do_faq(@ModelAttribute("sampleVO") SampleVO vo, ModelMap model) throws Exception {

		return "sample/faq";
	}
	
}
