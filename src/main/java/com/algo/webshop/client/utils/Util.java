package com.algo.webshop.client.utils;

public class Util {
	private static int counterOrder = 0;
	
	public static int getNuberOfOrder() {
		return ++counterOrder;
	}
}
