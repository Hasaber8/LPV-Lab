import java.io.*;
import java.net.*;

public class TokenClient2 {

    static boolean setSendData;
    static boolean hasToken;

    public static void main(String arg[]) throws Exception {
        InetAddress lclhost;
        BufferedReader br;
        String str1;
        TokenClientHelper tkcl;
        TokenClientHelper ser;
        while (true) {
            lclhost = InetAddress.getLocalHost();
            tkcl = new TokenClientHelper(lclhost);
            tkcl.setRecPort(8004);
            tkcl.setSendPort(9002);
            lclhost = InetAddress.getLocalHost();
            ser = new TokenClientHelper(lclhost);
            ser.setSendPort(9000);
            if (hasToken == true) {
                System.out.println("Do you want to enter the Data -> YES/NO");
                br = new BufferedReader(new InputStreamReader(System.in));
                str1 = br.readLine();
                if (str1.equalsIgnoreCase("yes")) {
                    ser.setSendData = true;
                    ser.sendData();
                } else if (str1.equalsIgnoreCase("no")) {
                    tkcl.sendData();
                    hasToken = false;
                }
            } else {
                System.out.println("entering recieving mode");
                tkcl.recData();
                hasToken = true;
            }
        }
    }
}