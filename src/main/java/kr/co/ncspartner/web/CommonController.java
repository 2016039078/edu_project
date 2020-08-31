
package kr.co.ncspartner.web;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.rte.fdl.property.EgovPropertyService;
import kr.co.ncspartner.service.Jeogi_userService;
import kr.co.ncspartner.vo.Jeogi_userVO;



@Controller
public class CommonController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(CommonController.class);

	@Resource(name = "Jeogi_userService")
	private Jeogi_userService jeogi_userService;
	
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;
	
	
	
	@RequestMapping(value = "/login.do")
	public String do_login(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("pvo") Jeogi_userVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//login.do");
		LOGGER.debug(vo.toString());
		return "c/login";
	}
	
	@RequestMapping(value = "/login_act.do")
	public String do_login_act(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("pvo") Jeogi_userVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//login_act.do");
		LOGGER.debug(vo.toString());
		
		int cnt = 0;
		Jeogi_userVO rvo = jeogi_userService.selectLogin(vo);
		if(rvo != null) {
			request.getSession().setAttribute("userSession", rvo);
			cnt = 1;
		}

		model.addAttribute("cnt",cnt);
		return "cact/login_act";
	}
	
	
	@RequestMapping(value = "/logout_act.do")
	public String do_logout_act(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("pvo") Jeogi_userVO vo, ModelMap model) throws Exception {
		LOGGER.debug("--------------------------------//logout_act.do");
		LOGGER.debug(vo.toString());
		request.getSession().invalidate();
		return "redirect:/index.jsp";
	}
	
	
	@RequestMapping(value = "/download.do")
	public void do_download(HttpServletRequest request, HttpServletResponse response) throws Exception {

		FileInputStream fis = null;
		BufferedInputStream in = null;
		ByteArrayOutputStream bStream = null;

		String fileoriginal = request.getParameter("file_origin"); // 원래이름
		String fullpath = request.getParameter("file_path"); // 원래이름

		String type = "";
		String charset = "UTF-8";
		String userAgent = request.getHeader("User-Agent");

		// String fullpath = ThumbnailUtil.getRealdir() + File.separator +
		// "manager" + File.separator + "organization" + File.separator +
		// file_origin;

		File file = new File(fullpath);
		String mimetype = request.getSession().getServletContext().getMimeType(file.getName());

		response.setHeader("Content-Type", type);
		response.setCharacterEncoding(charset);
		response.setContentType(mimetype + "; charset=" + charset);

		if (mimetype == null || mimetype.length() == 0) {
			mimetype = "application/octet-stream;";
		}

		if (userAgent.indexOf("MSIE 5.5") > -1) { // MS IE 5.5 이하
			response.setHeader("Content-Disposition", "filename=" + URLEncoder.encode(fileoriginal, charset) + ";");
		} else if (userAgent.indexOf("MSIE") > -1) { // MS IE (보통은 6.x 이상 가정)
			response.setHeader("Content-Disposition", "attachment; filename=" + java.net.URLEncoder.encode(fileoriginal, charset) + ";");
		} else { // 모질라나 오페라
			response.setHeader("Content-Disposition", "attachment; filename=" + new String(fileoriginal.getBytes(charset), "latin1") + ";");
		}

		if (file.isFile()) {
			fis = new FileInputStream(file);
			in = new BufferedInputStream(fis);
			bStream = new ByteArrayOutputStream();

			int readBytes = 0;

			while ((readBytes = in.read()) != -1) {
				bStream.write(readBytes);
			}

			response.setContentLength(bStream.size());
			bStream.writeTo(response.getOutputStream());

			response.getOutputStream().flush();
			response.getOutputStream().close();
			bStream.close();
			in.close();
			fis.close();

		}
	}
	
}
