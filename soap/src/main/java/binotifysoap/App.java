package binotifysoap;

import javax.xml.ws.Endpoint;
import binotifysoap.services.*;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        Endpoint.publish("http://localhost:9999/soap/subscription",new Subscription());
    }
}
