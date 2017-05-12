package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import bean.Stocjk;

public class ActionServlet  extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		res.setContentType("text/html;charset=utf-8");
		String str=req.getRequestURI();
	String action=str.substring(str.lastIndexOf("/"),str.lastIndexOf("."));
	System.out.println("action"+action);
	PrintWriter pw=res.getWriter();
	if("/quto".equals(action)){
		//返回几只股票的信息给浏览器（客户端）
		List<Stocjk> list=new ArrayList<Stocjk>();
		Random r=new Random();
		
		for(int i=0;i<8;i++){
			Stocjk s=new Stocjk();
			s.setCode("6556"+r.nextInt(10));
			s.setName("经典"+r.nextInt(11));
			s.setPrice(r.nextInt(1000));
			list.add(s);
		}
		ObjectMapper om=new ObjectMapper();
	String st=	om.writeValueAsString(list);
	System.out.println(st);
	
	pw.println(st);
	}else if("/getNumber".equals(action)){
	       //返回一个随机整数
		Random r=new Random();
		int number=r.nextInt(100);
		System.out.println(number);
		pw.println(number);
	}
	
	}

	
}
