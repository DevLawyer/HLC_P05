package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class jspCalendar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 int time = Calendar.getInstance().get(Calendar.AM_PM); 
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      response.setHeader("X-Powered-By", "JSP/2.3");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html  lang=\"es\">\n");
      out.write("<head>\n");
      out.write("<title>Page Title</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<H1>Bienvenido a JSPCalendar</H1>\n");
      out.write("\n");
      out.write("<P>Hoy es</P>\n");
      fecha.JspCalendar clock = null;
      synchronized (_jspx_page_context) {
        clock = (fecha.JspCalendar) _jspx_page_context.getAttribute("clock", PageContext.PAGE_SCOPE);
        if (clock == null){
          clock = new fecha.JspCalendar();
          _jspx_page_context.setAttribute("clock", clock, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("<UL>\n");
      out.write("<LI>Día: ");
      out.print( clock.getDayOfMonth() );
      out.write("\n");
      out.write("<LI>Mes: ");
      out.print( clock.getMonthInt() );
      out.write("\n");
      out.write("<LI>Año: ");
      out.print( clock.getYear() );
      out.write("\n");
      out.write("</UL>\n");
      out.write('\n');
      out.write('\n');

if (time == Calendar.AM) {

      out.write("\n");
      out.write("Buenos días\n");

}
else {

      out.write("\n");
      out.write("Buenas tardes\n");

}

      out.write('\n');
      out.write("\n");
      out.write("<p>Pulsa <a href=\"index.jsp\">aquí</a> para ver el origen.</p>\n");
      out.write("</body>\n");
      out.write("</html> \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
