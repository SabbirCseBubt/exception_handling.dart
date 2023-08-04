import 'package:exception_handling/exception_handling.dart' as exception_handling;

void main(List<String> arguments) {
  //try
  // catch
  //on
  //finally
  //custom

 try{
   withdrawAmount(110);
 }
 on AmountException
 catch(e)
 {
   print(e.errorMessage());


 }




  try
  {
    int a=10~/0; //block of code that might give exception should write on try block

    print(a);


  }

  catch(e)  // it should use when we do not know what type of exception is coming
  {

    print(e);
  }






  //on
  // it should use when we know what type of exception is coming
  try
  {
    int b=10~/0; //block of code that might give exception should write on try block

    print(b);


  }
  on IntegerDivisionByZeroException
  {

    print("Number can not devide by Zero");


  }







  // finally
  try
  {
    int c=10~/2; //block of code that might give exception should write on try block

    print(c);


  }

  catch(e)  // it should use when we do not know what type of exception is coming
      {

    print(e);
  }
  finally // if code has any error or not final block always will be executed
  {


    print("This is Final Block");
  }











}


// custom exception
class AmountException implements Exception
{
  errorMessage()
  {
    return "Please Enter Greater Than 0 Value";


  }



}

 withdrawAmount(int amount)
{
  if(amount<0)
   {

     throw AmountException();
   }

  else
  {

    print("Amount is valid $amount");



  }



}
