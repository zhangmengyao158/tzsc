package com.yc.tzsc.web.handler;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.yc.tzsc.entity.User;
import com.yc.tzsc.service.UserService;
import com.yc.tzsc.util.PhoneCode;
import com.yc.tzsc.util.ServletUtil;

@Controller
@RequestMapping("/user")
public class UserHandler {

	@Autowired
	private UserService userService;

	@RequestMapping("/login")
	@ResponseBody
	public boolean login(User user,HttpSession session,HttpServletRequest request, HttpServletResponse response) {
//		LogManager.getLogger().debug("请求UserHandler处理login....");
		
		user = userService.login(user);
		session.setAttribute("loginUserName", user.getUsername());  //往session裡面存
		session.setAttribute("loginUser", user);  //往session裡面存
		User user1 = (User) session.getAttribute("loginUser");
		
		 //用户名
        String username = user1.getUsername();
        //密码
        String upassword = user1.getUpassword();
        
//        System.out.println(username+"14523698522");
        //记住用户名、密码功能(注意：cookie存放密码会存在安全隐患)
        String remFlag = request.getParameter("remFlag");
        
//        System.out.println(remFlag+"14523698522");
        if("1".equals(remFlag)){ //"1"表示用户勾选记住密码
            String loginInfo = username+","+upassword;
            Cookie userCookie=new Cookie("loginInfo",loginInfo); 

            userCookie.setMaxAge(30*24*60*60);   //存活期为一个月 30*24*60*60
            userCookie.setPath("/");
            response.addCookie(userCookie); 
        }
		return user != null;
	}
	
	//註冊
	@RequestMapping("/register")
	@ResponseBody
	public boolean register(User user,HttpSession session) {
//		LogManager.getLogger().debug("请求UserHandler处理register....");
		
	//	boolean result = true;
		boolean result = userService.register(user);
		session.setAttribute("loginUserName", user.getUsername());
		session.setAttribute("registerUser", result);
		return result;  
	}
	
	//異步獲取信息
	@RequestMapping("/xinxi")
	@ResponseBody
	public User detal(HttpSession session) {
//		LogManager.getLogger().debug("请求UserHandler处理detal....");
		User user = new User();
		String userName = (String) session.getAttribute("loginUserName");
		user.setUsername(userName);
		user = userService.detal(user);
		return user; 
	}
	
	//保存信息
	@RequestMapping("/modify1")
	@ResponseBody
	public boolean modifyUser(@RequestParam(name="ulogo",required=false)MultipartFile picData ,User user){
		LogManager.getLogger().debug("请求UserHandler处理modifyUser....请求参数user"+user);
//		picData=user.getUlogo() ;
		boolean flag = false;
		System.out.println(picData);
		if(picData != null ){//&& !picData.isEmpty()
			System.out.println(picData);
			try {
				picData.transferTo(new File(ServletUtil.UPLOAD_DIR,picData.getOriginalFilename()));//上传文件
				user.setUphone("/" +ServletUtil.UPLOAD_DIR_NAME+ "/" +picData.getOriginalFilename());
				
			} catch (IllegalStateException | IOException e) {
				LogManager.getLogger().error("上传文件操作失败....",e);
			}
		}
		return userService.modifyUser(user);
	}
	
	//修改密码
		@RequestMapping("/modify2")
		@ResponseBody
		public boolean modifyPassword(User user,HttpSession session){
//			LogManager.getLogger().debug("请求UserHandler处理modifyUser....请求参数user"+user);
			
			User user1 = (User) session.getAttribute("loginUser");
			String username  = user1.getUsername();
			user.setUsername(username);
//			System.out.println(user);
			return userService.modifyPassword(user);
		}
		
	//验证码
		@Autowired
		PhoneCode phonecode;
		
		@RequestMapping("/captcha")
		@ResponseBody
		public  String  RegisterUser(String uphone){
			String  IfGetCo=phonecode.getPhonemsg(uphone);
			
			if(IfGetCo!=""&IfGetCo!=null){			
				LogManager.getLogger().debug("恭喜你,验证码发送成功,您的验证码为："+IfGetCo);		
				return IfGetCo;
			}else{
				LogManager.getLogger().debug("验证码发送失败,请重新获取");
			}	
			return null;
		}
		
}
