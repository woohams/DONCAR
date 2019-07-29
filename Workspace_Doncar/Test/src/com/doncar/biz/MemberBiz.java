package com.doncar.biz;

import java.util.List;

import com.doncar.dao.MemberDao;
import com.doncar.dto.MemberDto;

public class MemberBiz {
	
	MemberDao dao;
	
	public MemberBiz() {
		dao = new MemberDao();
	}
	
	public MemberDto login(String member_id, String member_pw) {
		
		return dao.login(member_id, member_pw);
	}
	
	public List<MemberDto> selectList() {

		return dao.selectList();
	}
	
	public MemberDto selectOne(int member_no) {

		return dao.selectOne(member_no);
	}

	
	public int insert(MemberDto MemberDto) {

		return dao.insert(MemberDto);
	}

	
	public int update(MemberDto MemberDto) {

		return dao.update(MemberDto);
	}

	public int delete(int member_no) {
		
		return dao.delete(member_no);
	}

	
}




