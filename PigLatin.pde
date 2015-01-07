import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  	for(int i = 0; i < sWord.length() - 1; i++)
 	{
    	String tempStr = sWord.substring(i, i+1);
    	if(tempStr.equals("a") || tempStr.equals("e") || tempStr.equals("i") || tempStr.equals("o") || tempStr.equals("u") )
    	{
      		return i;
    	}
  	}
  	return -1;
}


public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if(findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	else if(findFirstVowel(sWord) >= 1)
	{
		String sub1 = sWord.substring(0, findFirstVowel(sWord));
		String sub2 = sWord.substring(findFirstVowel(sWord));
		return sub2 + sub1 + "ay";
	}
	else if(findFirstVowel(sWord) == 1 && sWord.substring(findFirstVowel(sWord),findFirstVowel(sWord) + 1).equals("u") && sWord.substring(findFirstVowel(sWord) - 1,findFirstVowel(sWord)).equals("q"))
	{
		String sub1 = sWord.substring(0, 2);
		String sub2 = sWord.substring(2);
		return sub2 + sub1 + "ay";
	}
	else
	{
		return "ERROR!";
	}
}
