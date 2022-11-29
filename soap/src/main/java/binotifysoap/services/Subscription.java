package binotifysoap.services;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.Style;

@WebService
@SOAPBinding(style=Style.DOCUMENT)
public class Subscription {
  @WebMethod
  public void add(int creator_id, int subscriber_id){
    try{
      DBUtil db = new DBUtil();
      db.create(String.format("INSERT INTO Subscription(creator_id,subscriber_id) VALUES (%d,%d)",creator_id,subscriber_id));
    }catch(Exception e){
      e.printStackTrace();
    }
  }

  @WebMethod
  public void setStatus(int creator_id, int subscriber_id, String status){
    try{
      DBUtil db = new DBUtil();
      db.create(String.format("UPDATE Subscription SET status='%s' WHERE creator_id=%d AND subscriber_id=%d",status,creator_id,subscriber_id));
    }catch(Exception e){
      e.printStackTrace();
    }
  }
}
