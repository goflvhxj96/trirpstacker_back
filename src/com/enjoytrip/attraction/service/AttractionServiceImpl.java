package com.enjoytrip.attraction.service;

import java.sql.SQLException;
import java.util.List;

import com.enjoytrip.attraction.dao.AttractionDao;
import com.enjoytrip.attraction.dao.AttractionDaoImpl;
import com.enjoytrip.attraction.dto.AttractionInfoDto;

public class AttractionServiceImpl implements AttractionService {
	
	private static AttractionService attractionService = new AttractionServiceImpl();
	private AttractionDao attractionDao;
	
	private AttractionServiceImpl() {
		attractionDao = AttractionDaoImpl.getAttractionDao();
	}
	
	public static AttractionService getAttractionService() {
		return attractionService;
	}

	@Override
	public List<AttractionInfoDto> getAttractionList(String keyword, Integer sido, Integer gugun, int[] type)
			throws SQLException {
		return attractionDao.getAttractionList(keyword, sido, gugun, type);
	}

}
