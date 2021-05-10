package com.baby.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baby.entity.Advise;
import com.baby.entity.AdviseCla;
import com.baby.entity.AdviseReply;
import com.baby.entity.AdviseUse;
import com.baby.entity.AllUser;
import com.baby.service.AdviseService;
import com.baby.service.UserService;

@Controller
@RequestMapping("advise")
public class AdviseController {
	
	@Autowired
	private AdviseService adviseService;
	@Autowired
	private UserService userService;
	
	@RequestMapping("all")
	public String getAdvise(HttpServletRequest request){
		List<AdviseUse> advises = this.adviseService.findNewQues();
		List<AdviseUse> replies = this.adviseService.findNewReply();
		request.setAttribute("advises", advises);
		request.setAttribute("replies", replies);
		return "adviseAll";
	}
	
	@RequestMapping("id")
	public String getAdviseById(HttpServletRequest request){
		int aid = Integer.parseInt(request.getParameter("id"));
		Advise advise = this.adviseService.findAdById(aid);
		List<AdviseReply> reply = this.adviseService.findReById(aid);
		AllUser user = this.userService.selectUserById(advise.getUid());
		request.setAttribute("advise", advise);
		request.setAttribute("reply", reply);
		request.setAttribute("user", user);
		return "advise";
	}
	
	@RequestMapping("type")
	public String comeToClassify(HttpServletRequest request){
		int tid = Integer.parseInt(request.getParameter("id"));
		List<AdviseCla> advises = this.adviseService.classifyNewQues(tid);
		List<Advise> replies = this.adviseService.classifyNewRe(tid);
		request.setAttribute("advises", advises);
		request.setAttribute("replies", replies);
		return "adviseClassify";
	}
	
	@RequestMapping("add")
	public String addAdvise(HttpServletRequest request){
		int uid = Integer.parseInt(request.getParameter("uid"));
		String title = request.getParameter("title1");
		String con = request.getParameter("title2");
		int state = Integer.parseInt(request.getParameter("sel1"));
		int type = Integer.parseInt(request.getParameter("sel2"));
		
		Date date = new Date();
		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = dateFormat.format(date);
		
		Boolean end = this.adviseService.addAdvise(uid, title, con, state, type, time);
		
		List<AdviseUse> advises = this.adviseService.findNewQues();
		List<AdviseUse> replies = this.adviseService.findNewReply();
		request.setAttribute("advises", advises);
		request.setAttribute("replies", replies);
		return "adviseAll";
	}
	
	@RequestMapping("addReply")
	public String addReply(HttpServletRequest request){
		int uid = Integer.parseInt(request.getParameter("uid"));
		int aid = Integer.parseInt(request.getParameter("aid"));
		String con = request.getParameter("con");
		
		Date date = new Date();
		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = dateFormat.format(date);
		
		Boolean end = this.adviseService.addReply(uid, aid, con, time);
		
		Advise advise = this.adviseService.findAdById(aid);
		List<AdviseReply> reply = this.adviseService.findReById(aid);
		AllUser user = this.userService.selectUserById(advise.getUid());
		request.setAttribute("advise", advise);
		request.setAttribute("reply", reply);
		request.setAttribute("user", user);
		request.setAttribute("end", end);
		return "advise";
	}
}
