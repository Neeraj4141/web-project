package com.rays.UDPServer;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;

public class HelloUDPClient {
	public static void main(String[] args) throws UnknownHostException, IOException {

		Socket cSocket = new Socket("127.0.0.1", 4444);
		PrintWriter out = new PrintWriter(cSocket.getOutputStream(), true);
		BufferedReader in = new BufferedReader(new InputStreamReader(cSocket.getInputStream()));
		System.out.println("Client Started");

		BufferedReader stdin = new BufferedReader(new InputStreamReader(System.in));
		String line = stdin.readLine();
		while (line != null) {
			out.println(line);
			System.out.println("Echo = " + in.readLine());
			if ("Bye".equals(line)) {
				break;

			}
			line = stdin.readLine();

		}
		out.close();
		in.close();
		stdin.close();
		cSocket.close();
	}

}
