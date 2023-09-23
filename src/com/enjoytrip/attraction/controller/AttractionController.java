package com.enjoytrip.attraction.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.enjoytrip.attraction.dto.AttractionInfoDto;
import com.enjoytrip.attraction.service.AttractionService;
import com.enjoytrip.attraction.service.AttractionServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet("/attraction")
public class AttractionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private AttractionService attractionService;

	public void init(ServletConfig config) throws ServletException {
		attractionService = AttractionServiceImpl.getAttractionService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("application/json;charset=UTF-8");
		
		String action = request.getParameter("action");
		
		String path = "";
		if ("search".equals(action)) {
			String keyword = request.getParameter("keyword");
			String sidoStr = request.getParameter("sido");
			String gugunStr = request.getParameter("gugun");
			String typeStr = request.getParameter("type");
			Integer sido = null, gugun = null;
			int[] type = null;
			if (sidoStr != null) {
				sido = Integer.valueOf(sidoStr);
			}
			if (gugunStr != null) {
				gugun = Integer.valueOf(gugunStr);
			}
			if (typeStr != null) {
				String[] tmp = typeStr.split(",");
				type = new int[tmp.length];
				for (int i = 0; i < tmp.length; i++) {
					type[i] = Integer.parseInt(tmp[i]);
				}
			}
			
			List<AttractionInfoDto> res = new ArrayList<>();
			try {
				res = attractionService.getAttractionList(keyword, sido, gugun, type);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
//			jackson-data-binding
			ObjectMapper mapper = new ObjectMapper();
			// JSON으로 변환
			Map<String, List<AttractionInfoDto>> map = new HashMap<>();
			map.put("result", res);
			String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(map);
			response.getWriter().println(json);
		} else {
			redirect(request, response, path);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

	private void forward(HttpServletRequest request, HttpServletResponse response, String path)
			throws ServletException, IOException {
		RequestDispatcher disp = request.getRequestDispatcher(path);
		disp.forward(request, response);
	}

	private void redirect(HttpServletRequest request, HttpServletResponse response, String path)
			throws ServletException, IOException {
		response.sendRedirect(request.getContextPath() + path);
	}

}
