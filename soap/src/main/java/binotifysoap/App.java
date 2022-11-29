package binotifysoap;

import javax.xml.ws.Endpoint;
import binotifysoap.services.*;

public class App 
{
    public static void main( String[] args )
    {
        Endpoint.publish("http://localhost:9999/soap/subscription",new Subscription());
    }
}
