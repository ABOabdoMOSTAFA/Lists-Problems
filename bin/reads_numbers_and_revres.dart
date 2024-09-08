import 'dart:io';

void main(){
  stdout.write("Enter the numbers :");
  int size=int.parse(stdin.readLineSync());
  stdout.write("Enter $size scores: ");
  List<int>arr=[];
  readElementArray(arr, size);
  revresElementArray(arr,size);
}
void readElementArray(List<int>arr,int size){
  for(int i=0;i<size;i++){
    int score =int.parse(stdin.readLineSync());
    arr.add(score);
  }
}
void revresElementArray(List<int>arr,int size ){
  for(int i=size-1;i>=0;i--){
    stdout.write("${arr[i]} \t");
  }
}

