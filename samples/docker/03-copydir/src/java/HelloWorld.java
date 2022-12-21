import java.util.Arrays;
    
class HelloWorld
{
    public static void main(String args[])
    {
	String helloTarget = (args.length > 0) ? Arrays.toString(args) : "World";
        System.out.println("Hello, "+helloTarget);
    }
}
