<html>
  <body>
<% /*heroku link
  https://contatorevisitejava.herokuapp.com/
  https://contatorevisitejava.herokuapp.com/welcome
*/
<%@page import="java.io.*"%>
//<%@page package servlet%>

<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>

<%public class App extends HttpServlet
{
     //Instance variable used for counting hits on this servlet
     private static final long serialVersionUID = -3967314453512919811L;
     //private int iHitCounter;

     //init method just initializes the hitCounter to zero
     public void init() throws ServletException
     {
          
     }
     public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
     {
          HttpSession session = request.getSession();
          response.setContentType("text/html");
          PrintWriter out =  response.getWriter();
          
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
          
     }
     public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
     {
          doGet(request, response);
     }
}%>

  </body>
</html>
