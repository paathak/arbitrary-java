import java.io.*;
public class Main
{
	public static void main(String[] args) {
		Main.doThrowGeneric(new IOException()); //java will throw checked exception !!!!
		//Main.doThrowGeneric(new RuntimeException());
		//Main.<Exception>doThrowGeneric(new RuntimeException()); compiler has clarity now 
		//Main.<Exception>doThrowGeneric(new IOException()); compiler has clarity now
		
	}
	//the compiler is confused here as E can be any subclass of exception checked or unchecked
	//if compiler mandatorily gives compile error then what in case if it was runtime Exception
	public static <E extends Exception> void doThrowGeneric(Exception e) throws E {
	    throw (E)e;
	    
	}
	
}
