package cn.hl.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.hl.annotation.ExcludeInterceptor;
import cn.hl.service.handler.FileUploadHandler;
import cn.hl.utils.CommonResult;

@Controller
@RequestMapping("/upload")
public class FileUploadController {

	@Autowired
	private FileUploadHandler fileUploadHandler;
	
	@ExcludeInterceptor
	@RequestMapping("/uploadImage")
	@ResponseBody
	public CommonResult uploadImage(@RequestParam(value = "file",required = true)MultipartFile[] files,@RequestParam(value="userName",required = false)String userName) throws Exception {
		System.out.println("收到的文件"+files);
		CommonResult cr = fileUploadHandler.uploadFiles(files,userName);
		return cr;
	}
	@ExcludeInterceptor
	@RequestMapping("/tinymceUploadImage")
	@ResponseBody
	public Map<String, String> tinymceUploadImage(@RequestParam(value = "file",required = true)MultipartFile file,@RequestParam("userName")String userName) throws Exception {
		System.out.println("收到的文件"+file);
		 Map<String, String> tinymceUploadFile = fileUploadHandler.tinymceUploadFile(file,userName);
		return tinymceUploadFile;
	}
	
}
