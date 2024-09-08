import 'dart:io';

void main(){
 // List<int> arr=[40,55,70,58];
  stdout.write("Enter the number of students:");
  int size=int.parse(stdin.readLineSync());
  stdout.write("Enter $size scores: ");
  List<int>arr=[];
  readElementArray(arr, size);//[40,55,70,58]
  printElementArray(arr);
}


void readElementArray(List<int>arr,int size){
  for(int i=0;i<size;i++){
    int score =int.parse(stdin.readLineSync());
    arr.add(score);
  }
}
int getMaxScore(List<int>arr){
  int max = arr[0];
  for(int i=0;i<arr.length-1;i++){
    if(max<arr[i+1]){
      max=arr[i+1];
    }
  }
  return max;
}
String gradeScore(List<int>arr,int minScore,int maxScore){

  if(minScore >= maxScore - 10) {
    return 'A';
  } else if(minScore >= maxScore - 20) {
    return 'B';
  } else if(minScore >= maxScore - 30) {
    return 'C';
  } else if(minScore >= maxScore - 40) {
    return 'D';
  } else {
    return 'F';
  }

}

void printElementArray(List<int>arr){
   int maxScore = getMaxScore(arr);
  for(int i=0;i<arr.length;i++){
    print("Student ${i+1} score is ${arr[i]} and grade is ${gradeScore(arr, arr[i], maxScore)} ");
}
}

// import 'dart:io';
//
// void main() {
//   print('Enter the number of students:');
//   int numStudents = int.parse(stdin.readLineSync());
//
//   List<int> scores = [];
//   for(int i = 0; i < numStudents; i++) {//0<4
//     print('Enter score for student ${i+1}:');
//     scores.add(int.parse(stdin.readLineSync()));
//   }
//
//   int bestScore = scores[0];
//   for(int score in scores) {
//     if(score > bestScore) {
//       bestScore = score;
//     }
//   }
//
//   for(int i = 0; i < numStudents; i++) {
//     print('Student ${i+1} score is ${scores[i]} and grade is ${getGrade(scores[i], bestScore)}');
//   }
// }
//
// String getGrade(int score, int bestScore) {
//   if(score >= bestScore - 10) {
//     return 'A';
//   } else if(score >= bestScore - 20) {
//     return 'B';
//   } else if(score >= bestScore - 30) {
//     return 'C';
//   } else if(score >= bestScore - 40) {
//     return 'D';
//   } else {
//     return 'F';
//   }
// }
