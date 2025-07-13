package com.Hms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class HmsApplication {

	public static void main(String[] args) {
		SpringApplication.run(HmsApplication.class, args);
		 try {
	            Thread.currentThread().join();
	        } catch (InterruptedException ignored) {}
	}

}
