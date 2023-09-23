package com.enjoytrip.attraction.service;

import java.sql.SQLException;
import java.util.List;

import com.enjoytrip.attraction.dto.AttractionInfoDto;

public interface AttractionService {

	// 검색
	List<AttractionInfoDto> getAttractionList(String keyword, Integer sido, Integer gugun, int[] type) throws SQLException;
	
}
