package com.enjoytrip.member.service;

import com.enjoytrip.member.dto.MemberDto;

public interface MemberService {
	int idCheck(String userId) throws Exception;
	int joinMember(MemberDto memberDto) throws Exception;
	MemberDto loginMember(String userId, String userPwd) throws Exception;
}
