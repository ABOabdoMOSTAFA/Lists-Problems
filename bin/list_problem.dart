void main(){

}
int getMinSelection(List<int>arr){
  int min = arr[0];
  for(int i=0;i<arr.length-1;i++){
    if(arr[i]<arr[i+1]){
      min=arr[i];
    }
  }
  return min;
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
binarySearchV2(List<int> arr, int target) {
  selectionSortAlgorithm(arr);
  int start = 0;
  int end = arr.length - 1;
  while (start <= end) {
// int mid=start+(end-start)~/2;
    int mid = (start + end) ~/ 2;
    if (target > arr[mid]) {
      start = mid + 1;
    } else if (target < arr[mid]) {
      end = mid - 1;
    } else {
      return mid;
    }
  }
}