<html>
  <body>
<% @page import="package, java.io.*, java.io.IOException, java.io.IOException, java.io.PrintWriter, javax.servlet.ServletException, javax.servlet.http.HttpServlet, javax.servlet.annotation.WebServlet, javax.servlet.http.HttpSession,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse"%>

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
