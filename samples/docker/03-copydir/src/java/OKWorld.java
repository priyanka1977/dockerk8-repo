import java.util.Arrays;
    
class OKWorld
{
    public static void main(String args[])
    {
	String okayTarget = (args.length > 0) ? Arrays.toString(args) : "World";
        System.out.println("OK, "+okayTarget);
    }
}
