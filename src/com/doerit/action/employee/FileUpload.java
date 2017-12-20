package com.doerit.action.employee;
import java.util.List;
import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
//import org.apache.xmlbeans.impl.xb.xsdschema.ListDocument.List;




@WebServlet("/FileUpload")
public class FileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("upload");
		ServletFileUpload SF= new ServletFileUpload (new DiskFileItemFactory());
		List<FileItem> MultiFile;
		try {
			MultiFile = SF.parseRequest(request);
			for(FileItem item : MultiFile) {
				item.write(new File("/Users/kalana/Desktop/"));
			}
			System.out.println("upload");
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}

}
