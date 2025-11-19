package com.rays.UDPServer;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;

public class HelloUDPServer {
	public static void main(String[] args) throws IOException {

		ServerSocket sSocket = new ServerSocket(4444);
		System.out.println("Server Started");

		Socket cSocket = null;
		boolean flag = true;
		while (flag) {
			cSocket = sSocket.accept();
			talk(cSocket);

		}
		sSocket.close();
		System.out.println("Server Closed");
	}

	static void talk(Socket cSocket) throws IOException {
		PrintWriter out = new PrintWriter(cSocket.getOutputStream());
		BufferedReader in = new BufferedReader(new InputStreamReader(cSocket.getInputStream()));
		String line = in.readLine();
		while (line != null) {
			System.out.println("Server Received = " + line);
			out.println(line + " ... " + line);
			if (line.equals("Bye")) {
				break;

			}
			line = in.readLine();

		}
		out.close();
		in.close();
		cSocket.close();

	}

}
