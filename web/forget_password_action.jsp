<%@page import="mailApi.Mailer"%>
<%@page import="com.socialdocapp.dao.DoctorDAO"%>
<%

    String email = request.getParameter("email");
    boolean b = DoctorDAO.checkEmail(email);
    if (b) {
        //out.print("Email is found");

        String to = request.getParameter("email");
        String subject = "Forget Password Link....";
        String msg = "http://localhost:8080/NewThemeSocialDocApp/doctor_new_password.jsp?email="+email;
        String from = "saurabhtoist@gmail.com";
        String password = "@@$05061997";

        String result = Mailer.send(from, password, to, subject, msg);
        if(result !=null){
        response.sendRedirect("mail_send_success.jsp");
        }
        else{
            out.print("mail not send..");
        }

    } else {
        out.print("Email not found");
    }
%>