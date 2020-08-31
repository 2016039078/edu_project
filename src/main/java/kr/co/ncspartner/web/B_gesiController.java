
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
import kr.co.ncspartner.service.B_gesiService;
import kr.co.ncspartner.util.AjaxUtil;
import kr.co.ncspartner.vo.B_gesiVO;



@Controller
public class B_gesiController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(B_gesiController.class);

	@Resource(name = "b_gesiService")
	private B_gesiService b_gesiService;

	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;
	
	
	@RequestMapping(value = "/b_gesi_select.do")
	public String do_b_gesi_select(@ModelAttribute("pvo") B_gesiVO vo, ModelMap model) throws Exception {
		
		LOGGER.debug("--------------------------------//b_gesi_select.do");
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

		List<?> list = b_gesiService.selectList(vo);
		model.addAttribute("list", list);

		int totCnt = b_gesiService.selectListTotCnt(vo);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);

		return "b/b_gesi_select";
	}	
	
	
	@RequestMapping(value = "/b_gesi_detail.do")
	public String do_b_gesi_detail(@ModelAttribute("pvo") B_gesiVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//b_gesi_detail.do");
		LOGGER.debug(vo.toString());
		int cnt = b_gesiService.updateHit(vo);
		B_gesiVO rvo = b_gesiService.select(vo);
		model.addAttribute("rvo", rvo);
		return "b/b_gesi_detail";
	}
	
	
	@RequestMapping(value = "/b_gesi_insert.do")
	public String do_b_gesi_insert(@ModelAttribute("pvo") B_gesiVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//b_gesi_insert.do");
		LOGGER.debug(vo.toString());		
		return "b/b_gesi_insert";
	}		
	
	@RequestMapping(value = "/b_gesi_insert_act.do")
	public String do_b_gesi_insert_act(@ModelAttribute("pvo") B_gesiVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//b_gesi_insert_act.do");
		LOGGER.debug(vo.toString());		
		
		CommonsMultipartFile multipartfile = (CommonsMultipartFile) vo.getMyfile();

		String file_origin = multipartfile.getOriginalFilename();
		String file_path = "D:/upload/saeil/" + multipartfile.getOriginalFilename()+new Date().getTime();
		File file = new File(file_path);
		multipartfile.transferTo(file);	
		
		if(file_origin != null){
			if(file_origin.length() > 0){
				vo.setAttach_name(file_origin);
				vo.setAttach_path(file_path);
			}
		}		
		
		int cnt = b_gesiService.insert(vo);
		model.addAttribute("cnt", cnt);
		return "bact/b_gesi_insert_act";
	}	
	

	
	@RequestMapping(value = "/b_gesi_update.do")
	public String do_b_gesi_update(@ModelAttribute("pvo") B_gesiVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//b_gesi_update.do");
		LOGGER.debug(vo.toString());		
		B_gesiVO rvo = b_gesiService.select(vo);
		model.addAttribute("rvo", rvo);
		return "b/b_gesi_update";
	}	
	
	
	@RequestMapping(value = "/b_gesi_update_act.do")
	public String do_b_gesi_update_act(@ModelAttribute("pvo") B_gesiVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//b_gesi_update_act.do");
		LOGGER.debug(vo.toString());	
		B_gesiVO oldvo = b_gesiService.select(vo);
		
		if (!vo.getMyfile().getOriginalFilename().equals("")) {
			CommonsMultipartFile multipartfile = (CommonsMultipartFile) vo.getMyfile();

			String file_origin = multipartfile.getOriginalFilename();
			String file_path = "D:/upload/saeil/" + multipartfile.getOriginalFilename() + new Date().getTime();
			File file = new File(file_path);
			multipartfile.transferTo(file);

			vo.setAttach_name(file_origin);
			vo.setAttach_path(file_path);
		} else {
			vo.setAttach_name(oldvo.getAttach_name());
			vo.setAttach_path(oldvo.getAttach_path());
		}
		
		int cnt = b_gesiService.update(vo);
		LOGGER.debug(cnt+"");
		model.addAttribute("cnt", cnt);
		return "bact/b_gesi_update_act";
	}		
	
	
	@RequestMapping(value = "/b_gesi_delete_act.do")
	public String do_b_gesi_delete_act(@ModelAttribute("pvo") B_gesiVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//b_gesi_delete_act.do");
		LOGGER.debug(vo.toString());		
		int cnt = b_gesiService.delete(vo);
		model.addAttribute("cnt", cnt);
		return "bact/b_gesi_delete_act";
	}	
	
	@RequestMapping(value = "/b_gesi_deletefile_act.do")
	public void do_b_gesi_deletefile_act(@ModelAttribute("pvo") B_gesiVO vo, ModelMap model, HttpServletResponse response) throws Exception {
		LOGGER.debug("--------------------------------//b_gesi_deletefile_act.do");
		LOGGER.debug(vo.toString());		
		int cnt = b_gesiService.deleteFile(vo);
		String message = "ok";
		if(cnt != 1) {
			message = "ng";
		} 
		
		AjaxUtil.responseJson(response, message);
		
	}		

	
}
