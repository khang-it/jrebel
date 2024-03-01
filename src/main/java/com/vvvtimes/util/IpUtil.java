package com.vvvtimes.util;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author LErry.li
 * Date: 2018-08-17
 * Time: 13:34
 */
public class IpUtil {

    /**
     * 获取本机IP地址
     * @return
     */
    public static String getLocalIp(){
        String ipString = "";
        try {
            Enumeration<?> enumeration=NetworkInterface.getNetworkInterfaces();
            InetAddress ip=null;
            while(enumeration.hasMoreElements()){
                NetworkInterface netInterface = (NetworkInterface) enumeration.nextElement();
                Enumeration<?> addresses = netInterface.getInetAddresses();
                while (addresses.hasMoreElements()) {
                    ip = (InetAddress) addresses.nextElement();
                    System.out.println("服务地址:" + ip.getHostName());
                    if (ip != null && ip instanceof Inet4Address){
                        ipString = ip.getHostAddress();
                        System.out.println("本机所有的IP地址:"+ipString);
                    }
                }
            }
        } catch (SocketException e) {
            e.printStackTrace();
        }
        return ipString;
    }
}
