package com.training.javatr;


import java.io.*;

public class ExceptionUnderHood
{
	public static void main(String[] args) {
		ExceptionUnderHood.doThrowGeneric(new IOException()); //java will throw checked exception !!!!
		//Main.doThrowGeneric(new RuntimeException());
		
		// In above two cases java compiler took side of Unchecked exceptions, reason explained on line 17, 18 
		
		//ExceptionUnderHood.<Exception>doThrowGeneric(new RuntimeException()); compiler has clarity now 
		//ExceptionUnderHood.<Exception>doThrowGeneric(new IOException()); compiler has clarity now
		
		//ExceptionUnderHood.<RuntimeException>doThrowGeneric(new IOException()); //compiler has clarity now & this will work too and won't fail while casting!!!!
		Exception e = new IOException();
		IOException i = (IOException)e;
		i.getCause();
	}
	//the compiler is confused here as E can be any subclass of exception checked or unchecked
	//if compiler mandatorily gives compile error then what in case if it was runtime Exception , compiler just took side of unchecked here!! (obviously
	//to support existing code before generics that might not have handled an unchecked exception, one that would have handled has no impact in this case)
	public static <E extends Exception> void doThrowGeneric(Exception e) throws E {
	    throw (E)e;
	    
	}
	
}
