package kr.co.ncspartner.util;

import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;




public class AjaxUtil {
	public static void responseXml(HttpServletResponse response, String resultStr) throws Exception {
		response.setContentType("application/xml");
		PrintWriter out = response.getWriter();
		out.print(resultStr);
		out.flush();
		out.close();
	}

	public static void responseJson(HttpServletResponse response, List list) throws Exception {
		String result = new ObjectMapper().writeValueAsString(list);
		response.setContentType("text/javascript;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(result);
		out.flush();
		out.close();
	}

	public static void responseJson(HttpServletResponse response, String resultStr) throws Exception {
		String result = new ObjectMapper().writeValueAsString(resultStr);
		response.setContentType("text/javascript;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(result);
		out.flush();
		out.close();
	}

	public static void responseStr(HttpServletResponse response, String resultStr) throws Exception {
		String result = resultStr;
		response.setContentType("text/javascript;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(result);
		out.flush();
		out.close();
	}

	public static void responseJson(HttpServletResponse response, Map map) throws Exception {
		String result = new ObjectMapper().writeValueAsString(map);
		response.setContentType("text/javascript;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(result);
		out.flush();
		out.close();
	}

	public static Map<String, Object> vo2map(Object vo) throws Exception {
		Map<String, Object> map = new HashMap();

		Field[] fields = vo.getClass().getDeclaredFields();

		for (Field field : fields) {
			String filedName = field.getName();
			System.out.println(filedName);
			String methodName = filedName.substring(0, 1).toUpperCase(); //M
			methodName += filedName.substring(1); //ember_id
			map.put(filedName, vo.getClass().getDeclaredMethod("get" + methodName).invoke(vo));
		}

		return map;
	}

}
