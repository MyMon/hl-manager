package cn.hl.service.handler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import cn.hl.utils.CommonResult;
import cn.hl.utils.HlUtils;
import cn.hl.utils.PropertyUtil;

@Service
public class FileUploadHandler {

//	@Autowired 另一种获取properties的方式
//	private PropertyConfigurer pc;
//		String property2 = pc.getProperty("ftp.host");
//		System.out.println("propertyConfig获取的属性值:"+property2);
	
	
	public CommonResult uploadFiles(MultipartFile[] files,String userName) throws Exception {
		CommonResult cr = new CommonResult();
		String ftpHost = PropertyUtil.getProperty(HlUtils.FTP_HOST)
			   ,ftpName = PropertyUtil.getProperty(HlUtils.FTP_NAME)
			   ,ftpPass = PropertyUtil.getProperty(HlUtils.FTP_PASS);
		int ftpPort = Integer.parseInt(PropertyUtil.getProperty(HlUtils.FTP_PORT));
		if(HlUtils.isEmpty(userName)) {
			userName=HlUtils.ANONYMOUS;
		}
		String paths="/"+userName+"/"+HlUtils.getCurrentDate();
		List<String> imageUrls=new ArrayList<>();
		//创建目录
		 if(HlUtils.createFtpDirectory(ftpHost, ftpName, ftpPass, ftpPort, paths)) {
			//上传文件 http://192.168.8.9/zhangsanfeng/2020-03-29/b4522198e42a4f8f9ab147541325aa8b_test2.jpg
				for(MultipartFile file:files) {
					String fileName=HlUtils.getUUID()+"_"+file.getOriginalFilename();
					HlUtils.uploadFile(ftpHost, ftpName, ftpPass,
							ftpPort, paths, fileName, file.getInputStream());
					imageUrls.add(PropertyUtil.getProperty("nginx_url")+paths+"/"+fileName);
				}
		 }
		 cr.put(HlUtils.DATA, imageUrls);
		return cr;
	}
	
	public  Map<String,String>  tinymceUploadFile(MultipartFile file,String userName) throws Exception {
		String ftpHost = PropertyUtil.getProperty(HlUtils.FTP_HOST)
			   ,ftpName = PropertyUtil.getProperty(HlUtils.FTP_NAME)
			   ,ftpPass = PropertyUtil.getProperty(HlUtils.FTP_PASS);
		int ftpPort = Integer.parseInt(PropertyUtil.getProperty(HlUtils.FTP_PORT));
		if(HlUtils.isEmpty(userName)) {
			userName=HlUtils.ANONYMOUS;
		}
		String paths="/"+userName+"/"+HlUtils.getCurrentDate();
		String imageUrls="";
		//创建目录
		 if(HlUtils.createFtpDirectory(ftpHost, ftpName, ftpPass, ftpPort, paths)) {
			//上传文件 http://192.168.8.9/zhangsanfeng/2020-03-29/b4522198e42a4f8f9ab147541325aa8b_test2.jpg
				String fileName=HlUtils.getUUID()+"_"+file.getOriginalFilename();
				HlUtils.uploadFile(ftpHost, ftpName, ftpPass,
						ftpPort, paths, fileName, file.getInputStream());
				imageUrls=PropertyUtil.getProperty("nginx_url")+paths+"/"+fileName;
		 }
		 Map<String,String> map=new HashMap<>();
		 map.put("location", imageUrls);
		 return map;
	}
}
