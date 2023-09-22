package com.ssafy.member.dto;

public class MemberDto {
	private String memberId;
	private String memberPwd;
	private String nickname;
	private String email;
	private String profilePic;
	private String joinDate;
	private String unjoin;
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPwd() {
		return memberPwd;
	}
	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getProfilePic() {
		return profilePic;
	}
	public void setProfilePic(String profilePic) {
		this.profilePic = profilePic;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	public String getUnjoin() {
		return unjoin;
	}
	public void setUnjoin(String unjoin) {
		this.unjoin = unjoin;
	}
	@Override
	public String toString() {
		return "MemberDto [memberId=" + memberId + ", memberPwd=" + memberPwd + ", nickname=" + nickname + ", email="
				+ email + ", profilePic=" + profilePic + ", joinDate=" + joinDate + ", unjoin=" + unjoin + "]";
	}
	
}
