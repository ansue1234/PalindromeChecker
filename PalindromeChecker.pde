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
  //your code here
  String a = word.toLowerCase();
  String b = new String();
  for(int i = 0; i<word.length(); i++){
      if(Character.isLetter(a.charAt(i))){
        b+=a.substring(i,i+1);
    }
  }
  if(reverse(word).equals(b)){
    return true;
  }else{
  return false;
}
}
public String reverse(String str)
{
    String sNew = new String();
    String a = str.toLowerCase();
    String b = new String();
    //your code here
    for(int i = 0; i<str.length(); i++){
      if(Character.isLetter(a.charAt(i))){
        b+=a.substring(i,i+1);
      }
    }
    for(int i = b.length(); i>0; i--){
      sNew+=b.substring(i-1,i);
    }
    return sNew;
}


