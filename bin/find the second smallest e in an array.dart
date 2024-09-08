void main(){
  List<int>arr=[  1,  9,  0,  5, 4, 2 ];
print(getSecondElementArray(arr));
}
int getSecondElementArray(List<int>arr){
  selectionSortAlgorithm(arr);
  return arr[1];
}
int getMinIndexOfArray(List<int>arr,int start) {
  int minValue = start;
  for (int i = start; i < arr.length; i++) {
    if (arr[minValue] > arr[i]) {
      minValue = i;
    }

  }
  return minValue;
}
void swappeElementOfArray(List<int>arr, int number_1,int number_2){
  int temp = arr[number_1];
  arr[number_1]=arr[number_2];
  arr[number_2]= temp;
}
List selectionSortAlgorithm(List<int>arr){
  for(int i=0;i<arr.length;i++){
    int minIndex=getMinIndexOfArray(arr,i);
    swappeElementOfArray(arr, i, minIndex);
  }
  return arr;
}

