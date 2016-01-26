//line 26 find puncuation with Character.isLetter and add it to a new string
public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String noSpace = new String();
  for (int i = 0; i < word.length(); i++) {
    if (word.charAt(i) != ' ') {
      noSpace = noSpace + word.charAt(i);
    }
  }

  String noNumAndSpace = new String();
  for (int i = 0; i < noNumAndSpace.length(); i++) {
    if (Character.isLetter(noSpace.charAt(i))) {
      noNumAndSpace = noNumAndSpace + noNumAndSpace.charAt(i);
    }
  }
  
  for (int i = 0; i < noNumAndSpace.length(); i++) {
    if (noNumAndSpace.charAt(i) != noNumAndSpace.charAt(noNumAndSpace.length()-(i+1))) {
      return false;
    }
  }
  return true;
}

