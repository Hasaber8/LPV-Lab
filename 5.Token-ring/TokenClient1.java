import java.io.*;
import java.net.*;

public class TokenClient1 {
    public static void main(String arg[]) throws Exception {
        InetAddress lclhost;
        BufferedReader br;
        String str = "";
        TokenClientHelper tkcl, tkser;
		
        while (true) {
            lclhost = InetAddress.getLocalHost();
            tkcl = new TokenClientHelper(lclhost);
            tkser = new TokenClientHelper(lclhost);
			tkcl.hasToken = true;
            // tkcl.setSendPort(9001);
            tkcl.setSendPort(9004);
            tkcl.setRecPort(8002);
            lclhost = InetAddress.getLocalHost();
            tkser.setSendPort(9000);
            if (tkcl.hasToken == true) {
                System.out.println("Do you want to enter the Data -> YES/NO");
                br = new BufferedReader(new InputStreamReader(System.in));
                str = br.readLine();
                if (str.equalsIgnoreCase("yes")) {
                    System.out.println("ready to send");
                    tkser.setSendData = true;
                    tkser.sendData();
                    tkser.setSendData = false;
                } else if (str.equalsIgnoreCase("no")) {
                    // tkcl.hasToken=false;
                    tkcl.sendData();
                    tkcl.recData();
                }
            } else {
                System.out.println("ENTERING RECEIVING MODE…");
                tkcl.recData();
            }
        }
    }
}