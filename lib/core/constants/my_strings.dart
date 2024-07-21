/* if you have constant thigs make them private so that you cannot access them in
anywhere else outside u can only use them in that paricular file */

class MyStrings{
  // MyStrings();//this is public
  MyStrings._(); //this is private
  //v use static bcz without creating object we can use it
  static const String appName='Jurno';
}