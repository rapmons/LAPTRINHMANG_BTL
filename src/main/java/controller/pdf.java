package controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/pdf")
public class pdf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public pdf() {
        super();
       
    }
    static byte[] data = null;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/pdf");
		String url = request.getParameter("ip123");
		
		try {
			
			
			BufferedInputStream bis = new BufferedInputStream(
					new FileInputStream(url));
			
			if (data==null)
				data = bis.readAllBytes();
			
			
			BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
			bos.write(data);
			
		} catch (Exception e) {
			//e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
