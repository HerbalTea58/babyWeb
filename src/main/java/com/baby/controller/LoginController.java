package com.baby.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baby.entity.Essay;
import com.baby.entity.ReclassType;
import com.baby.entity.ResearchType;
import com.baby.entity.ShowInMain;
import com.baby.entity.User;
import com.baby.service.EssayService;
import com.baby.service.EssayTypeService;
import com.baby.service.ManageService;
import com.baby.service.UserService;

@Controller
@RequestMapping("login")
public class LoginController {
	@Autowired
	private EssayService essayService;
	@Autowired
	private EssayTypeService essayTypeService;
	@Autowired
	private UserService userService;
	@Autowired
	private ManageService manageService;

	@RequestMapping("start")
	public String selectStart(HttpServletRequest request){
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
			
			List<ShowInMain> types = this.essayService.getEssayInfoTen();
			Essay essay1 = this.essayService.findEssayOne();
			Essay essay2 = this.essayService.findEssayTwo();
			Essay essay3 = this.essayService.findEssayThree();
			Essay essay4 = this.essayService.findEssayFour();
			Essay essay5 = this.essayService.findEssayFive();
			Essay essay6 = this.essayService.findEssaySix();
			Essay essay7 = this.essayService.findEssaySeven();
			Essay essay8 = this.essayService.findEssayEight();
			Essay essay9 = this.essayService.findEssayNine();
			Essay essay0 = this.essayService.findEssayTen();
			
			request.setAttribute("essay1", essay1);
			request.setAttribute("essay2", essay2);
			request.setAttribute("essay3", essay3);
			request.setAttribute("essay4", essay4);
			request.setAttribute("essay5", essay5);
			request.setAttribute("essay6", essay6);
			request.setAttribute("essay7", essay7);
			request.setAttribute("essay8", essay8);
			request.setAttribute("essay9", essay9);
			request.setAttribute("essay0", essay0);
			request.getSession().setAttribute("show", types);
			return "remain";
		}
			
		else
			return "login";
	}
	
	
	@RequestMapping("classify")
	public String goPageById(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		
		List<ResearchType> types1 = this.essayService.findEssayByTSAndGood(1, id);
		List<ResearchType> types2 = this.essayService.findEssayByTSAndGood(2, id);
		List<ResearchType> types3 = this.essayService.findEssayByTSAndGood(3, id);
		List<ResearchType> types4 = this.essayService.findEssayByTSAndGood(4, id);
		List<ResearchType> types5 = this.essayService.findEssayByTSAndGood(5, id);
		List<ResearchType> types6 = this.essayService.findEssayByTSAndGood(6, id);
		
		request.setAttribute("types1", types1);
		request.setAttribute("types2", types2);
		request.setAttribute("types3", types3);
		request.setAttribute("types4", types4);
		request.setAttribute("types5", types5);
		request.setAttribute("types6", types6);
		request.setAttribute("sid", id);
		
		return "classify";
	}

	@RequestMapping("reclassify")
	public String goPageReclassify(HttpServletRequest request){
		int sid = Integer.parseInt(request.getParameter("sid"));
		int tid = Integer.parseInt(request.getParameter("tid"));
		String sname = this.essayTypeService.getStateName(sid);
		String tname = this.essayTypeService.getTypeName(tid);
		
		List<ReclassType> types = this.essayService.findEssayByTS(tid, sid);
		request.setAttribute("sname", sname);
		request.setAttribute("tname", tname);
		request.setAttribute("types", types);
		
		return "reclassify";
	}
	
	@RequestMapping("unlogin")
	public String unlogin(HttpServletRequest request){
			Essay essay1 = this.essayService.findEssayOne();
			Essay essay2 = this.essayService.findEssayTwo();
			Essay essay3 = this.essayService.findEssayThree();
			Essay essay4 = this.essayService.findEssayFour();
			Essay essay5 = this.essayService.findEssayFive();
			Essay essay6 = this.essayService.findEssaySix();
			Essay essay7 = this.essayService.findEssaySeven();
			Essay essay8 = this.essayService.findEssayEight();
			Essay essay9 = this.essayService.findEssayNine();
			Essay essay0 = this.essayService.findEssayTen();
			
			request.setAttribute("essay1", essay1);
			request.setAttribute("essay2", essay2);
			request.setAttribute("essay3", essay3);
			request.setAttribute("essay4", essay4);
			request.setAttribute("essay5", essay5);
			request.setAttribute("essay6", essay6);
			request.setAttribute("essay7", essay7);
			request.setAttribute("essay8", essay8);
			request.setAttribute("essay9", essay9);
			request.setAttribute("essay0", essay0);
			/*request.getSession().setAttribute("show", types);*/
			return "remain";
	}
	
	@RequestMapping("managelogin")
	public String managelogin(HttpServletRequest request){
		String uid = request.getParameter("uid");
		String pw = request.getParameter("password");
		int end = this.manageService.login(uid, pw);
		
		request.getSession().setAttribute("mid", uid);
		if(end == 1)
			return "maPage";
		else
			return "manageLogin";
	}
}
