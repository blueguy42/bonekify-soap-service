package binotifysoap.services;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.Style;

import javax.annotation.Resource;
import javax.xml.ws.WebServiceContext;
import javax.xml.ws.handler.MessageContext;
import com.sun.net.httpserver.HttpExchange;
import java.text.SimpleDateFormat;

@WebService
@SOAPBinding(style=Style.DOCUMENT)
public class Subscription {
  @Resource
  WebServiceContext wsContext;

  private void log(String desc, String endpoint){
    try{
      MessageContext msgx = this.wsContext.getMessageContext();
      HttpExchange exchange = (HttpExchange)msgx.get("com.sun.xml.ws.http.exchange");
      System.out.println("Client IP = " + exchange.getRemoteAddress()); 
      DBUtil db = new DBUtil();
      System.out.println(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new java.util.Date()));
      db.create(String.format("INSERT INTO Logging(description,IP,endpoint,requested_at) VALUES ('%s','%s','%s','%s')",desc,exchange.getRemoteAddress(),endpoint, new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new java.util.Date())));
    }catch(Exception e){
      e.printStackTrace();
    }
  }

  @WebMethod
  public void add(int creator_id, int subscriber_id){
    try{
      this.log(String.format("menambahkan permintaan subscription baru untuk creator_id=%d dan subscriber_id =%d",creator_id,subscriber_id),"localhost/soap/subscription");
      DBUtil db = new DBUtil();
      db.create(String.format("INSERT INTO Subscription(creator_id,subscriber_id) VALUES (%d,%d)",creator_id,subscriber_id));
    }catch(Exception e){
      e.printStackTrace();
    }
  }

  @WebMethod
  public void setStatus(int creator_id, int subscriber_id, String status){
    try{
      this.log(String.format("mengubah status subscription creator_id=%d dan subscriber_id =%d",creator_id,subscriber_id),"localhost/soap/subscription");
      DBUtil db = new DBUtil();
      db.create(String.format("UPDATE Subscription SET status='%s' WHERE creator_id=%d AND subscriber_id=%d",status,creator_id,subscriber_id));
    }catch(Exception e){
      e.printStackTrace();
    }
  }
}
