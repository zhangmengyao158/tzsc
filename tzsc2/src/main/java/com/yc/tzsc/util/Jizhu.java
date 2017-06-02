package com.yc.tzsc.util;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Jizhu {
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
        //用户名
        String name = request.getParameter("username");
        //密码
        String passWord = request.getParameter("upassword");
        
        System.out.println(name+"14523698522");
        //记住用户名、密码功能(注意：cookie存放密码会存在安全隐患)
        String remFlag = request.getParameter("remFlag");
        if("1".equals(remFlag)){ //"1"表示用户勾选记住密码
            String loginInfo = name+","+passWord;
            Cookie userCookie=new Cookie("loginInfo",loginInfo); 

            userCookie.setMaxAge(30*24*60*60);   //存活期为一个月 30*24*60*60
            userCookie.setPath("/");
            response.addCookie(userCookie); 
        }
	}
}
