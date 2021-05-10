package com.baby.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baby.entity.Comment;
import com.baby.entity.Essay;
import com.baby.entity.ResearchType;
import com.baby.service.CommentService;
import com.baby.service.EssayService;

@Controller
@RequestMapping("essay")
public class EssayController {
	
	@Autowired
	private EssayService essay;
	@Autowired
	private CommentService commenetService;
	
	@RequestMapping("id")
	public String intoEssay(HttpServletRequest req){
		int id = Integer.parseInt(req.getParameter("id"));
		Essay essay = this.essay.getEssayById(id);
		List<Comment> comment = this.commenetService.getCommentByUid(id);
		boolean re1 = this.essay.addClick(id);
		if(!re1)
			return "loginfalse";
		req.setAttribute("essayInfo", essay);
		req.setAttribute("comment", comment);
		return "essay";
	}
	
	@RequestMapping("find")
	public String Researcch(HttpServletRequest req){
		String text = req.getParameter("text");
		if(text == "")
			return "main";
		List<ResearchType> research = this.essay.findEssay(text);
		req.setAttribute("research", research);
		return "research";
	}
	
	@RequestMapping("putCom")
	public String putCom(HttpServletRequest request){
		int tid = Integer.parseInt(request.getParameter("tid"));
		int uid = Integer.parseInt(request.getParameter("uid"));
		String con = request.getParameter("con");
		Date date = new Date();
		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = dateFormat.format(date);
		Boolean end = this.commenetService.putCom(tid, uid, con, time);
		
		Essay essay = this.essay.getEssayById(tid);
		List<Comment> comment = this.commenetService.getCommentByUid(tid);
		boolean re1 = this.essay.addClick(tid);
		if(!re1)
			return "loginfalse";
		request.setAttribute("end", end);
		request.setAttribute("essayInfo", essay);
		request.setAttribute("comment", comment);
		return "essay";
	}
}
