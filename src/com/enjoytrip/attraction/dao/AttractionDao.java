package com.enjoytrip.attraction.dao;

import java.sql.SQLException;
import java.util.List;

import com.enjoytrip.attraction.dto.AttractionInfoDto;

public interface AttractionDao {
	
	// 검색
	List<AttractionInfoDto> getAttractionList(String keyword, Integer sido, Integer gugun, int[] type) throws SQLException;

}
