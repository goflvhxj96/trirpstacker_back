package com.enjoytrip.member.dao;

import java.sql.SQLException;

import com.enjoytrip.member.dto.MemberDto;

public interface MemberDao {
	int idCheck(String userId) throws SQLException;
	int joinMember(MemberDto memberDto) throws SQLException;
	MemberDto loginMember(String userId, String userPwd) throws SQLException;
}
