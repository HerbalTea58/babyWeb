package com.baby.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baby.service.UserService;
import com.baby.entity.AllUser;
import com.baby.entity.Collection;
import com.baby.entity.User;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	private UserService userService;


	@RequestMapping("login")
	public String login(HttpServletRequest request, HttpServletResponse response) {
		String uid= request.getParameter("uid");
		String password = request.getParameter("password");
		int end = this.userService.login(uid, password);
		User user = null;
		if(end>0){
			if(end==1){
				user = this.userService.getInfoById(uid, password);
			}
			if(end == 2){
				user = this.userService.getInfoByNick(uid, password);
			}
			if(end==3){
				user = this.userService.getInfoByPhone(uid, password);
			}
			
			request.getSession().setAttribute("loginUser", user);
			//request.getSession().setAttribute("", );
			return "main";
		}
			
		else
			return "loginFalse";
	}
	
	@RequestMapping("userManage")
	public String goUserManage(HttpServletRequest request){
		int uid = Integer.parseInt(request.getParameter("uid"));
		AllUser user = this.userService.selectUserById(uid);
		request.setAttribute("userInfo", user);
		return "userManage1";
	}
	
	@RequestMapping("changePw")
	public String changePw(HttpServletRequest request){
		String uid = request.getParameter("uid");
		String old1 = request.getParameter("old1");
		String old2 = request.getParameter("old2");
		int sure = this.userService.login(uid, old1);
		Boolean end = false;
		if(sure>0){
			end = this.userService.changePw(uid, old2);
		}
		request.setAttribute("end", end);
		return "userManage2";
	}
	
	@RequestMapping("collection")
	public String getCol(HttpServletRequest request){
		int uid = Integer.parseInt(request.getParameter("uid"));
		List<Collection> cols = this.userService.getCols(uid);
		request.setAttribute("cols", cols);
		return "userManage3";
	}
	
	@RequestMapping("changeInfo")
	public String changeInfo(HttpServletRequest request){
		int uid = Integer.parseInt(request.getParameter("uid"));
		String nick = request.getParameter("nick");
		String name = request.getParameter("name");
		int sex = Integer.parseInt(request.getParameter("sex"));
		return "userManage1";
	}
}
