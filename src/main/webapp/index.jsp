<%@ page import = "java.io.*,java.util.*" %>
<%
   if(session.getAttribute("Counter")==null){
               session.setAttribute("Counter", 1);
               out.println("<h3>Benvenuto !</h3>");
               out.println("E' la prima volta che visiti questo sito");
          }
          else{
               session.setAttribute("Counter",(((int)session.getAttribute("Counter"))+1));
               out.println("<form>");
               out.println("<h3>Ciao!</h3>");
               out.println("Hai visitato questo sito "+ session.getAttribute("Counter") + " volte.");
               out.println("</form>");
          }
%>

