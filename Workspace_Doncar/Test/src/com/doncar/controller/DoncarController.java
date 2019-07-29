package com.doncar.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doncar.biz.MemberBiz;
import com.doncar.dao.MemberDao;
import com.doncar.dto.MemberDto;


@WebServlet("/doncar.do")
public class DoncarController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	MemberBiz biz = new MemberBiz();

    public DoncarController() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String command = request.getParameter("command");
		System.out.println("<" + command + ">");
		
		if(command.equals("login")) {
			
			String member_id = request.getParameter("id");
			String member_pw = request.getParameter("pw");
			
			MemberDto dto = biz.login(member_id, member_pw);
			if(dto != null) {
				request.getSession().setAttribute("dto", dto);
				if(dto.getMember_roll().equals("ADMIN")) {
					dispatch(request, response, "adminmain.jsp");
				} else if(dto.getMember_roll().equals("USER")) {
					dispatch(request, response, "main.jsp");
				} 
				
			} else {
				alert("아이디 혹은 비밀번호가 틀렸습니다.", "login.jsp", response);
			}
			
		}else if(command.equals("logout")) {
			request.getSession().invalidate();
			response.sendRedirect("login.jsp");
			
			
		}else if(command.contains("comment")) {
			if(command.equals("comment_selectlist")) {

			}else if(command.equals("comment_selectone")) {
				
			}else if(command.equals("comment_insert")) {
				
			}else if(command.equals("comment_delete")) {
				
			}else if(command.equals("comment_update")) {
				
			}
		}else if(command.contains("member")) {
			if(command.equals("member_selectlist")) {			
				
				List<MemberDto> list = biz.selectList();
				request.setAttribute("list", list);
				dispatch(request, response, "adminmemberlist.jsp");
				
			}else if(command.equals("member_selectone")) {		
				
				List<MemberDto> list = biz.selectList();
				request.setAttribute("list", list);
				dispatch(request, response, "usermain.jsp");
				
//				int member_no = Integer.parseInt(request.getParameter("no"));
//				request.setAttribute("MemberDto", biz.selectOne(member_no));
//				dispatch(request, response, "usermain.jsp");
				
			}else if(command.equals("member_insert")) {
				
			}else if(command.equals("member_delete")) {
				
			}else if(command.equals("member_update")) {
				
			}
		}else if(command.contains("rent")) {
			if(command.equals("rentboard_selectlist")) {
				
			}else if(command.equals("rentboard_selectone")) {
				
			}else if(command.equals("rentboard_insert")) {
				
			}else if(command.equals("rentboard_delete")) {
				
			}else if(command.equals("rentboard_update")) {
				
			}else if(command.equals("rentacc_selectlist")) {
				
			}else if(command.equals("rentacc_selectone")) {
				
			}else if(command.equals("rentacc_insert")) {
				
			}else if(command.equals("rentacc_delete")) {
				
			}else if(command.equals("rentacc_update")) {
				
			}
		}else if(command.contains("car")) {
			if(command.equals("carboard_selectlist")) {
				
			}else if(command.equals("carboard_selectone")) {
				
			}else if(command.equals("carboard_insert")) {
				
			}else if(command.equals("carboard_delete")) {
				
			}else if(command.equals("carboard_update")) {
				
			}else if(command.equals("caracc_selectlist")) {
				
			}else if(command.equals("caracc_selectone")) {
				
			}else if(command.equals("caracc_insert")) {
				
			}else if(command.equals("caracc_delete")) {
				
			}else if(command.equals("caracc_update")) {
				
			}
		}else if(command.contains("chat")) {
			if(command.equals("chat_selectlist")) {
				
			}else if(command.equals("chat_selectone")) {
				
			}else if(command.equals("chat_insert")) {
				
			}else if(command.equals("chat_delete")) {
				
			}else if(command.equals("chat_update")) {
				
			}
		}else if(command.contains("free")) {
			if(command.equals("freeboard_selectlist")) {
				
			}else if(command.equals("freeboard_selectone")) {
				
			}else if(command.equals("freeboard_insert")) {
				
			}else if(command.equals("freeboard_delete")) {
				
			}else if(command.equals("freeboard_update")) {
				
			}
		}else if(command.contains("notice")) {
			if(command.equals("noticeboard_selectlist")) {
				
			}else if(command.equals("noticeboard_selectone")) {
				
			}else if(command.equals("noticeboard_insert")) {
				
			}else if(command.equals("noticeboard_delete")) {
				
			}else if(command.equals("noticeboard_update")) {
				
			}
		}else {
			response.sendRedirect("error.jsp?command="+command);
		}
		
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}
	
	public void dispatch(HttpServletRequest request, HttpServletResponse response, String url) throws ServletException, IOException {
		RequestDispatcher dispatch = request.getRequestDispatcher(url);
		dispatch.forward(request, response);
	}
	
	public void alert(String msg, String url, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		out.print("<script> alert('"+msg+"'); location.href='"+url+"'; </script>");
	}
	

}






