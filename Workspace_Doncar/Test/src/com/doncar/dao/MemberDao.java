package com.doncar.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.doncar.dto.MemberDto;

public class MemberDao extends SqlMapConfig {

	private String namespace = "member.";

	public MemberDto login(String id, String pw) {

		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pw);

		SqlSession session = null;
		MemberDto dto = null;

		try {
			session = getSqlSessionFactory().openSession(false);
			dto = session.selectOne(namespace + "login", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return dto;

	}

	public List<MemberDto> selectList() {

		SqlSession session = null;
		List<MemberDto> list = null;

		try {
			session = getSqlSessionFactory().openSession(false);
			list = session.selectList(namespace + "selectList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return list;
	}

	public MemberDto selectOne(int member_no) {

		SqlSession session = null;
		MemberDto MemberDto = new MemberDto();

		try {
			session = getSqlSessionFactory().openSession(false);
			MemberDto = session.selectOne(namespace + "selectOne", member_no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return MemberDto;
	}
	
	public int insert(MemberDto MemberDto) {
		
		SqlSession session = null;
		int res = 0;
		
		try {
			session = getSqlSessionFactory().openSession(false);
			res = session.insert(namespace + "insert", MemberDto);
			
			if(res > 0) {
				session.commit();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
			
		return res;
	}
	
	public int update(MemberDto MemberDto) {

		SqlSession session = null;
		int res = 0;
		
		try {
			session = getSqlSessionFactory().openSession(false);
			res = session.update(namespace + "update", MemberDto);
			
			if(res > 0) {
				session.commit();
			}
			
		} catch (Exception e) {			
			e.printStackTrace();
		} finally {
			session.close();			
		}
		
		return res;
		
	}
	
	public int delete(int member_no) {
		
		SqlSession session = null;
		int res = 0;
		
		try {
			session = getSqlSessionFactory().openSession(false);
			res = session.delete(namespace + "delete", member_no);
			
			if(res > 0) {
				session.commit();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return res;
	}

}











