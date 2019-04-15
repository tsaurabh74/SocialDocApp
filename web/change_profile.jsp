<%@page import="com.socialdocapp.dao.DoctorDAO"%>
<%@page import="com.socialdocapp.model.Doctor"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%
    String profile = "";
    try {

        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);

        List<FileItem> list = upload.parseRequest(request);
        Iterator<FileItem> itr = list.iterator();
        while (itr.hasNext()) {
            FileItem fileItem = itr.next();
            String fieldName = fileItem.getFieldName();
            if (!fileItem.isFormField()) {
                if (fieldName.equals("profile")) {
                    profile = System.currentTimeMillis() + fileItem.getName();
                    String filePath = getServletContext().getRealPath("/") + "profile\\" + profile;
                    fileItem.write(new File(filePath));

                }
            }
        }
        Doctor d = new Doctor();
        d.setProfile_pic(profile);

        if (DoctorDAO.changeProfilePic(d, session)) {
            response.sendRedirect("timeline.jsp");
        }
    } catch (Exception e) {

    } finally {
        try {

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>