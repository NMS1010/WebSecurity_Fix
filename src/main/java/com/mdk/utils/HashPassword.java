package com.mdk.utils;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.xml.bind.DatatypeConverter;

public class HashPassword {
//	public static void main(String[] args) throws NoSuchAlgorithmException {
//		System.out.println(hashSHA256("123456", "admin1@admin"));
//	}
	public static String hashSHA256 (String password, String email) throws NoSuchAlgorithmException {
		MessageDigest digest = MessageDigest.getInstance("SHA-256");
		String pass_email = password + email;
		byte[] hash = digest.digest(pass_email.getBytes(StandardCharsets.UTF_8));
		
		return DatatypeConverter.printHexBinary(hash);
	}
}
