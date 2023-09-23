package com.enjoytrip.attraction.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.enjoytrip.attraction.dto.AttractionInfoDto;
import com.enjoytrip.util.DBUtil;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class AttractionDaoImpl implements AttractionDao {

	private static AttractionDao AttractionDao = new AttractionDaoImpl();
	private DBUtil dbUtil;

	private AttractionDaoImpl() {
		dbUtil = DBUtil.getInstance();
	}

	public static AttractionDao getAttractionDao() {
		return AttractionDao;
	}
	
	@Override
	public List<AttractionInfoDto> getAttractionList(String keyword, Integer sido, Integer gugun, int[] type) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<AttractionInfoDto> infos = new ArrayList<>();
		try {
			conn = DBUtil.getInstance().getConnection();
			StringBuilder sql = new StringBuilder("select * from attraction_info ");
			boolean pre = false;
			if (keyword != null || sido != null || gugun != null || type != null) {
				sql.append("where ");
			}
			if (keyword != null) {
				sql.append("title like ? ");
				pre = true;
			}
			if (sido != null) {
				if (pre)
					sql.append("and ");
				sql.append("sido_code = ? ");
				pre = true;
			}
			if (gugun != null) {
				if (pre)
					sql.append("and ");
				sql.append("gugun_code = ? ");
				pre = true;
			}
			if (type != null) {
				if (pre)
					sql.append("and ");
				sql.append("content_type_id in ( ");
				for (int i = 0; i < type.length; i++) {
					if (i != type.length - 1 ) {
						sql.append("?, ");						
					} else {
						sql.append("? )");
					}
				}
			}
			
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 1;
			if (keyword != null) {
				pstmt.setString(idx++, "%" + keyword + "%");
			}
			if (sido != null) {
				pstmt.setInt(idx++, sido);
			}
			if (gugun != null) {
				pstmt.setInt(idx++, gugun);
			}
			if (type != null) {
				for (int i = 0; i < type.length; i++) {
					pstmt.setInt(idx++, type[i]);
				}
			}
			rs = pstmt.executeQuery();
			
			// 리스트로 만들기
			while (rs.next()) {
				AttractionInfoDto dto = new AttractionInfoDto();
				dto.setContentId(Integer.parseInt(rs.getString("content_id")));
				dto.setContentTypeId(Integer.parseInt(rs.getString("content_type_id")));
				dto.setTitle(rs.getString("title"));
				dto.setAddr1(rs.getString("addr1"));
				dto.setAddr2(rs.getString("addr2"));
				dto.setZipcode(rs.getString("zipcode"));
				dto.setTel(rs.getString("tel"));
				dto.setFirstImage(rs.getString("first_image"));
				dto.setFirstImage2(rs.getString("first_image2"));
				dto.setReadcount(Integer.parseInt(rs.getString("readcount")));
				dto.setSidoCode(Integer.parseInt(rs.getString("sido_code")));
				dto.setGugunCode(Integer.parseInt(rs.getString("gugun_code")));
				dto.setLatitude(Double.parseDouble(rs.getString("latitude")));
				dto.setLongitude(Double.parseDouble(rs.getString("longitude")));
				dto.setMlevel(rs.getString("mlevel"));
				infos.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.getInstance().close(rs, pstmt, conn);			
		}
		
		return infos;
	}
}
