import java.io.*;
import java.util.*;


public class CaesarCipher 
{

    public static void main(String[] args) throws IOException
    {

        System.out.println("Welcome to CaesarCipher");
        System.out.println("Enter 1 to encipher, or 2 to decipher (-1 to exit)");
        Scanner c = new Scanner (System.in);
        int crypter = c.nextInt();
        if (crypter ==-1)
        {
            System.exit(0);
        }
        else
        {
            System.out.println("What shift should I use?");
            int shifter = c.nextInt();

            System.out.println("What is the name of the Input File?");
            Scanner o = new Scanner (System.in);
            String inputFile = o.next();

            System.out.println("What is the name of the Output File?");
            String outputFileName = o.next();
            File outputFile = new File (outputFileName);

            System.out.println("DONE!");

            if (crypter == 1) caesarEncipher(inputFile, outputFileName, shifter);
            if (crypter == 2) caesarDecipher(inputFile, outputFileName, shifter);
        }
        
    }
    
    static int returnCycle(int shiftInput)
    {        
        if (shiftInput > 26)
        {
            int newShift = shiftInput%26;
            return newShift;
        }
        else
        {
            return shiftInput;
        }
    }

    static String caesarEncipher(String input, String output, int shift) throws FileNotFoundException, IOException 
    {
        shift = returnCycle(shift);
        // read in file
        File inFile = new File(input);
        Scanner scanner = new Scanner(inFile);
        String inString = scanner.nextLine();
        while (scanner.hasNextLine()) 
        {
            inString = inString + "\n" + scanner.nextLine();
        }
        char[] message = inString.toCharArray();
        System.out.println(Arrays.toString(message));
        for (int i = 0; i < message.length; i++) 
        {
            char letter = message[i];
            char newletter = message[i];
            if(Character.isLetter(letter))
            {
                newletter = (char) (letter + shift);
                if (newletter > 'z') 
                {
                    newletter = (char) (newletter - 26);
                } 
                else if (newletter > 'Z' && letter < 'a')
                {
                    newletter = (char) (newletter - 26);
                }
            }
            message[i] = newletter;
        }
	System.out.println(Arrays.toString(message));
        String outString = new String(message);
        try (PrintWriter pwriter = new PrintWriter (output)) 
        {
            pwriter.println(outString);
        }
        return new String(message);
    }

    static String caesarDecipher(String input, String output, int shift) throws FileNotFoundException, IOException
    {	
        shift = returnCycle(shift);
        // read file
        File inFile = new File(input);
        Scanner scanner = new Scanner(inFile);
        String inString = scanner.nextLine();
        while (scanner.hasNextLine()) 
        {
            inString = inString + "\n" + scanner.nextLine();
        }
        char[] message = inString.toCharArray();
        System.out.println(Arrays.toString(message));
	
        for (int i = 0; i < message.length; i++) 
        {
            char letter = message[i];
            char newletter = 0;
            if(Character.isLetter(letter))
            {
                newletter = (char) (letter - shift);
                if (newletter < 'A') 
                {
                    newletter = (char) (newletter + 26);
                } 
                else if (newletter < 'a' && letter > 'Z')
                {
                    newletter = (char) (newletter + 26);
                }
            }
            message[i] = newletter;
        }

        System.out.println(Arrays.toString(message));
        String outString = new String(message);
        try (PrintWriter pwriter = new PrintWriter (output)) 
        {
            pwriter.println(outString);
        }
        return new String(message);
    }
}
