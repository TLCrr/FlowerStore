package TLC.servlet;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener()
public class OnlineListener implements HttpSessionListener {
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {

        System.out.println("session产生了");
        ServletContext context = httpSessionEvent.getSession().getServletContext();//application全局
        Integer count = (Integer) context.getAttribute("peopleOnline");
        if (count == null) {
            count = 1;
        } else {
            count++;
        }
        context.setAttribute("peopleOnline",count);
    }
    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        System.out.println("session销毁了");
        ServletContext context = httpSessionEvent.getSession().getServletContext();
        Integer count = (Integer) context.getAttribute("peopleOnline");
        count--;
        context.setAttribute("peopleOnline",count);
    }
}
