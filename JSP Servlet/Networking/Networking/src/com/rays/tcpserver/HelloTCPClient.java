package com.rays.tcpserver;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;

public class HelloTCPClient {
	public static void main(String[] args) throws UnknownHostException, IOException {

		Socket client = new Socket("localhost", 1234);

		DataInputStream in = new DataInputStream(client.getInputStream());
		DataOutputStream out = new DataOutputStream(client.getOutputStream());
		out.writeBytes("Hello Server\n");
		String greeting = in.readLine();
		System.out.println(greeting);
		client.close();

	}

}
