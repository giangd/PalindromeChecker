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
  for (int i = 0; i < noSpace.length(); i++) {
    if (space.charAt(i) != ' ') {
      noSpace = noSpace + word.charAt(i);
    }
  }
  for (int i = 0; i < noSpace.length(); i++) {
    if (noSpace.charAt(i) != noSpace.charAt(noSpace.length()-(i+1))) {
      return false;
    }
  }
  return true;
}

