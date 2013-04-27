<%@ page import="java.io.PrintWriter" %>
<body>
    <div class="wrapper" style="
            position: relative;
            background: url('img/header1.png');
            height:115px;
    ">            
        <div class="social">
            <span style="float:left; color: #eee;
	font: 28px Tahoma, Helvetica, Arial, Sans-Serif;
	text-align: center;
                text-shadow: 0px 2px 3px #fff;">makanapa.com</span>
            <a href="#" title="facebook"><img src="img/facebook.png" width="20" height="20" alt="facebook"></a>
            <a href="#" title="twitter"><img src="img/twitter.png" width="20" height="20" alt="twitter"></a>
            <a href="#" title="linkedin"><img src="img/linkedin.png" width="20" height="20" alt="linkedin"></a>
            <a href="#" title="vcard"><img src="img/vcard.png" width="20" height="20" alt="vcard"></a>
            <a href="#" title="picasa"><img src="img/picasa.png" width="20" height="20" alt="picasa"></a>
        </div>
       
         <% 
         
            String[] activeSession = new String[10];
            for(int i=0; i<activeSession.length; i++)
                activeSession[i] = "";        
            activeSession[Integer.parseInt(request.getParameter("active"))] = "class=\"active\"";
            response.setContentType("text/html");
            
            if(session == null || session.getAttribute("hasLoggedIn") == null){
                out.println(
                    "<ul id=\"nav\" class=\"main\">" +
                    "<li><a href=\"index.jsp\" " + activeSession[0] + ">Homepage</a></li>" +
                    "<li><a href=\"contact.jsp\" " + activeSession[1] + ">Contact Us</a></li>" +
                    "<li><a href=\"signup.jsp\" " + activeSession[2] + ">Sign Up</a></li></ul>" );
                out.flush();
            }else{
                out.println( 
                    "<ul id='nav' class='main'>" +
                    "<li><a href='index.jsp'" + activeSession[0] + "> Homepage </a></li>" +
                    "<li><a href='profile.jsp'" + activeSession[1] + ">Profile</a></li>" +
                    "<li><a href='contact.jsp'" + activeSession[2] + ">Contact</a></li>" +
                    "<li><a href='SessionManager?action=logout'" + activeSession[3] + ">Logout</a></li></ul>"
                );
                out.flush();
        } %>
        
    </div><!--end of wrapper div-->    
    <div class="clear"></div> 