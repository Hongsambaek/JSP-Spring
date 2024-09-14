package kr.or.ddit.ch07;

import java.util.ArrayList;

public class MemberDAO{
	
	// 회원 정보가 담길 List
	private ArrayList<MemberVO> memberList = new ArrayList<MemberVO>();
	
	// 싱글톤
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}
	
	// 회원 정보 목록 조회
	public ArrayList<MemberVO> getMemberList() {
		return memberList;
	}

	// 직접 만들어보세요.
	public MemberVO getMember(String memId) {
		MemberVO mem = new MemberVO();
		for(int i = 0; i < memberList.size(); i++) {
			MemberVO member = memberList.get(i);
			if(member.getMem_id().equals(memId)) {
				mem = member;
				break;
			}
		}
		return mem;
	}
	
	// 회원 정보 등록
	public void insertMember(MemberVO member) {
		memberList.add(member);
	}

}
