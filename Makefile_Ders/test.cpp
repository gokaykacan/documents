#include <iostream>
using namespace std;

void goToExit(){

  bool statement = true;
  if(statement){
    throw string( "Something wrong");
  }

}

int main(){

  try{
    goToExit();
  }
  catch(string &e){
    cout << "String Erorr message" << endl;
  }

  cout << "Still running Program" << endl;

  return 0;


}
