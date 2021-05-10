package com.baby.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baby.entity.Essay;
import com.baby.entity.EssayManage;
import com.baby.entity.ReportAdviseQues;
import com.baby.entity.ReportCom;
import com.baby.service.EssayService;
import com.baby.service.ManageService;

@Controller
@RequestMapping("manage")
public class ManageController {

	@Autowired
	private EssayService essayService;
	@Autowired
	private ManageService manageService;
	
	@RequestMapping("essay")
	public String getEssay(HttpServletRequest request){
		List<EssayManage> essays = this.essayService.manageEssay();
		request.setAttribute("essays", essays);
		return "maEssay";
	}
	
	@RequestMapping("comment")
	public String getCom(HttpServletRequest request){
		List<ReportCom> coms = this.manageService.getComs();
		request.setAttribute("coms", coms);
		return "maCom";
	}
	
	@RequestMapping("advise")
	public String getAdvise(HttpServletRequest request){
		List<ReportAdviseQues> ques = this.manageService.getQues();
		List<ReportCom> rques = this.manageService.getRques();
		request.setAttribute("ques", ques);
		request.setAttribute("rques", rques);
		return "maAdvise";
	}
	
	@RequestMapping("addEssay")
	public String addEssay(HttpServletRequest request){
		int mid = Integer.parseInt(request.getParameter("mid"));
		String title = request.getParameter("title");
		String pre = request.getParameter("preread");
		int state = Integer.parseInt(request.getParameter("sel1"));
		int type = Integer.parseInt(request.getParameter("sel2"));
		String con= request.getParameter("con");
		Date date = new Date();
		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = dateFormat.format(date);
		Boolean end = this.essayService.addEssay(title, pre, type, state, con, time, mid);
		
		List<EssayManage> essays = this.essayService.manageEssay();
		request.setAttribute("essays", essays);
		request.setAttribute("end", end);
		return "maEssay";
	}
	
	@RequestMapping("findEssay")
	public String findEssay(HttpServletRequest request){
		int id = Integer.parseInt(request.getParameter("tid"));
		Essay essay = this.essayService.findEssayByIdManage(id);
		request.setAttribute("essay", essay);
		return "maFindEssay";
	}
	
	@RequestMapping("updateEssay")
	public String updateEssay(HttpServletRequest request){
		int mid = Integer.parseInt(request.getParameter("mid"));
		int tid = Integer.parseInt(request.getParameter("tid"));
		String title = request.getParameter("title");
		String pre = request.getParameter("preread");
		int state = Integer.parseInt(request.getParameter("sel1"));
		int type = Integer.parseInt(request.getParameter("sel2"));
		String con= request.getParameter("con");
		Date date = new Date();
		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = dateFormat.format(date);
		Boolean end = this.essayService.updateEssay(title, pre, type, state, con, time, mid, tid);
		
		List<EssayManage> essays = this.essayService.manageEssay();
		request.setAttribute("essays", essays);
		request.setAttribute("end", end);
		return "maEssay";
	}
	
	@RequestMapping("removeEssay")
	public boolean removeEssay(int id){
		boolean end = this.manageService.removeEssay(id);
		return end;
	}
}
