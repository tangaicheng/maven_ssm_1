package com.hz.ssm.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.hz.ssm.pojo.Customer;
import com.hz.ssm.service.CustomerService;
import com.hz.ssm.utils.UploadUtils;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	
	@RequestMapping("/addCustomerInfo")
	public String addCustomerInfo(MultipartFile picFile,Customer customer,Model model) throws IllegalStateException, IOException{
		System.out.println("=================");

		System.out.println("asdasdasd");
	//得到上传文件名称
		String filename = picFile.getOriginalFilename();
		System.out.println("filename==="+filename);
		//处理文件重名的问题
		String uuidName = UploadUtils.getUUIDName(filename);
		//准备file对象
		File file = new File("D:\\image\\"+uuidName);
		
		//执行文件上传
		picFile.transferTo(file);
		
		System.out.println("jjjjjjjjjjjjjj");
		
		//把路径保存到数据库
		customer.setPicFilepath(uuidName);
		//日期400的问题
		int rows = customerService.addCustomerInfo(customer);
	
		System.out.println("customer==="+customer);
		
		return "index";
	}

}
