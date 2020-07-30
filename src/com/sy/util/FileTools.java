package com.sy.util;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

//上传帮助类（SSM自带）
public class FileTools {
	 /**
	 * @param request：Servlet自带的
	 * @param 
	 * @return
	 */
	public static String fileUpload(HttpServletRequest request, MultipartFile upload){
		String fileName="";
	        try{
	            //获得文件要保存的位置
	           String path= request.getSession().getServletContext().getRealPath("/images/");
	          // System.out.println("..../myapo/images");
	           //判断文件要保存的目录是否存在
	            File file=new File(path);
	            if(!file.exists()){
	                //创建目录
	                file.mkdirs();
	            }
	            //获得上传文件的名字
	            fileName=upload.getOriginalFilename();
	            //执行上传操作(服务器中 webapp发布路径)
	            upload.transferTo(new File(path,fileName));//path+""+flieName
	        }catch (Exception e){
	            System.out.println(e.getMessage());
	        }
	        return "/images/"+fileName;
	    }
}
