//startPage.html

<html>
<head>
<title>Page 1</title>
</head>

<body>
<h1>URL Re-writing Demo</h1>

<a href="page2.jsp">Click here</a> to visit page 2.

</body>

</html>

//page2.jsp
<html>
<head>
<title>Page 2</title>
</head>

<body>
<h1>URL Re-writing Demo</h1>

<a href="<%=response.encodeURL("page1.jsp")%>">Click here</a> to visit page 1.

</body>

</html>
//page1.jsp


<html>
<head>
<title>Page 1</title>
</head>

<body>
<h1>URL Re-writing Demo</h1>

<a href="<%=response.encodeURL("page2.jsp")%>">Click here</a> to visit page 2.

</body>

</html>


///
//web.xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE web-app PUBLIC "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN"
  "http://java.sun.com/dtd/web-app_2_3.dtd">
<web-app>
  <listener>
    <listener-class>com.java2s.SessionCount</listener-class>
  </listener>
  <taglib>
    <taglib-uri>http://java.sun.com/jstl/core</taglib-uri>
    <taglib-location>/WEB-INF/c.tld</taglib-location>
  </taglib>
</web-app>

//sessionCounter.jsp
<html>
<head>
<title>Session Counter</title>
</head>
<body>
<h1>Session Counter</h1>
On this server, there are currently
<%=com.java2s.SessionCount.getNumberOfSessions()%> active sessions.

</body>
</html>


package com.java2s;

import javax.servlet.http.*;

public class SessionCount implements HttpSessionListener
{
  private static int numberOfSessions = 0;

  public void sessionCreated (HttpSessionEvent evt)
  {
    numberOfSessions++;
  }

  public void sessionDestroyed (HttpSessionEvent evt)
  {
    numberOfSessions--;
  }

  // here is our own method to return the number of current sessions
  public static int getNumberOfSessions()
  {
    return numberOfSessions;
  }

}