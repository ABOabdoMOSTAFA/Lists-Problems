import 'dart:io';

void main(){
  List<int>arr=[  8,  0,  1,  5 ];
  print("enter the number to search");
  int value=int.parse(stdin.readLineSync());
  int result =checkValueArray(arr, value);
  if(result!=-1){
    print("yes and the index =${result}");
  }else{
    print("no");
  };
  //print(checkValueArray(arr, value));
}
int  checkValueArray(List<int>arr,int value){
  for(int i=0;i<arr.length;i++){
    if(arr[i]==value){
      return i;
    }

  }
return-1;
}