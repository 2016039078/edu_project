
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
import kr.co.ncspartner.service.PrecautionsService;
import kr.co.ncspartner.service.SampleService;
import kr.co.ncspartner.vo.PrecautionsVO;
import kr.co.ncspartner.vo.SampleVO;



@Controller
public class PrecautionsController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(PrecautionsController.class);

	@Resource(name = "precautionsService")
	private PrecautionsService precautionsService;

	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;
	
	
	@RequestMapping(value = "/precautions_select.do")
	public String do_sample_select(@ModelAttribute("precautionsVO") PrecautionsVO vo, ModelMap model) throws Exception {
		
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

		List<?> list = precautionsService.selectList(vo);
		model.addAttribute("list", list);

		int totCnt = precautionsService.selectListTotCnt(vo);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);

		return "sample/sample_select";
	}	
	
	
	@RequestMapping(value = "precautions_detail.do")
	public String do_sample_detail(@ModelAttribute("precautionsVO") PrecautionsVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//sample_detail.do");
		LOGGER.debug(vo.toString());		
		PrecautionsVO rvo = precautionsService.select(vo);
		model.addAttribute("rvo", rvo);
		return "sample/sample_detail";
	}
	
	@RequestMapping(value = "/precautions_insert.do")
	public String do_sample_insert(@ModelAttribute("precautionsVO") PrecautionsVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//sample_insert.do");
		LOGGER.debug(vo.toString());		
		return "sample/sample_insert";
	}		
	
	@RequestMapping(value = "/precautions_insert_act.do")
	public String do_sample_insert_act(@ModelAttribute("precautionsVO") PrecautionsVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//sample_insert_act.do");
		LOGGER.debug(vo.toString());		
		int cnt = precautionsService.insert(vo);
		model.addAttribute("cnt", cnt);
		return "sample/sample_insert_act";
	}			
	
	
	@RequestMapping(value = "/precautions_update.do")
	public String do_sample_update(@ModelAttribute("precautionsVO") PrecautionsVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//sample_update.do");
		LOGGER.debug(vo.toString());		
		PrecautionsVO rvo = precautionsService.select(vo);
		model.addAttribute("rvo", rvo);
		return "sample/sample_update";
	}	
	
	
	@RequestMapping(value = "/precautions_update_act.do")
	public String do_sample_update_act(@ModelAttribute("precautionsVO") PrecautionsVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//sample_update_act.do");
		LOGGER.debug(vo.toString());		
		int cnt = precautionsService.update(vo);
		model.addAttribute("cnt", cnt);
		return "sample/sample_update_act";
	}		
	
	@RequestMapping(value = "/precautions_delete_act.do")
	public String do_sample_delete_act(@ModelAttribute("precautionsVO") PrecautionsVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//sample_delete_act.do");
		LOGGER.debug(vo.toString());		
		int cnt = precautionsService.delete(vo);
		model.addAttribute("cnt", cnt);
		return "sample/sample_delete_act";
	}		
	

	
}
