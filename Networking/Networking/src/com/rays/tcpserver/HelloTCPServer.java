package com.rays.tcpserver;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

public class HelloTCPServer {
	public static void main(String[] args) throws IOException {

		ServerSocket server = new ServerSocket(1234);

		Socket client = server.accept();

		DataInputStream in = new DataInputStream(client.getInputStream());

		DataOutputStream out = new DataOutputStream(client.getOutputStream());

		String greeting = in.readLine();
		System.out.println(greeting);
		out.writeBytes("Hello Client\n");

		client.close();
		server.close();

	}

}
