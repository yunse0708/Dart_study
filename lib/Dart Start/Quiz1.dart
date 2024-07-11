/* Quiz 1
값이 없는 number 리스트 변수를 만들고 for 루프를 사용하여 1부터 10까지의 값을 추가하세요. 

void main() {
  List<int> number = [];
  for (int i = 1; i <= 10; i++) {
    number.add(i);
  }
  print(number);
}
*/

/* Quiz 2 
정수 리스트를 인수로 사용하고 리스트의 짝수 요소 수를 반환하는 countEvenNumbers라는 함수를 작성하세요.
numbers리스트로 함수를 테스트하고 결과를 인쇄하세요 */
void main() {
  List<int> number = [1,2,3,4,5,6,7,8,9,10];
  int countEvenNumbers = number.where((num)=>num % 2 == 0).length;
  print(countEvenNumbers);
}
