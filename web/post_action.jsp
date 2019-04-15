<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@page import="com.socialdocapp.model.Post"%>
<%@page import="com.socialdocapp.dao.PostDao"%>
<%
  DiskFileItemFactory factory = new DiskFileItemFactory();
  ServletFileUpload upload = new ServletFileUpload(factory);
 
  List<FileItem>list = upload.parseRequest(request);
  Iterator<FileItem>itr = list.iterator();
  String post_text = "";
  String post_image = "";
  String post_type="";
  while(itr.hasNext())
  {
    FileItem fileItem = itr.next();
    String name = fileItem.getFieldName();
    if(fileItem.isFormField())
    {
      if(name.equals("post_text"))
      {
        post_text = fileItem.getString();
      }
    
    if(name.equals("post_type")){
        post_type = fileItem.getString();
    }
    }
    else
    {
        post_image =System.currentTimeMillis()+fileItem.getName();
        String filePath = getServletContext().getRealPath("/")+"post_image\\"+post_image;
        fileItem.write(new File(filePath));
        
    }
  }
  
  Post post = new Post();
  int doc_id = Integer.parseInt(session.getAttribute("id").toString());
  String date = Long.toString(System.currentTimeMillis());
  post.setDoctorId(doc_id);
  post.setPostDate(date);
  post.setPostText(post_text);
  post.setPostImage(post_image);
  post.setPostType(post_type);
  if(PostDao.savePost(post))
  {
       response.sendRedirect("newsfeed.jsp?post=suc");
  }
  else
  {
    // error.jsp
  }
%>