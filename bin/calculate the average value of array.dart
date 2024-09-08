void main(){
  List<double>arr=[  1,  9,  0,  5, 4, 2 ];
  print(calculateAvrageArray(arr));
}
double calculateAvrageArray(List<double>arr){
  double sum=0;
  double avrage=0;
  for(int i=0; i<arr.length;i++){
    //arr[i]+=sum
       sum+=arr[i];
  }
  avrage=sum/arr.length;
return avrage;
}