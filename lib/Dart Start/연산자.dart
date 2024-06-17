void main() {
  // 사칙 여산
  print(1 + 2); // 더하기
  print(1 - 2); // 빼기
  print(1 * 2); // 곱하기
  print(1 / 2); // 나누기
  print(1 % 2); // 나머지
  print(5 ~/ 2); // 몫

  // 증감 연산자
  // 이 구문을 많이 사용하지만 a = a+1을 계속 쓰기 힘드니 나온 것이 증감연산자
  int a = 1;
  a = a + 1;
  print(a);

  int b = 1;
  print(++b); // 만자 1을 더하는 것
  print(b++); // print 구문을 실행 후, 1을 더함(print을 출력 후 마지막에 1을 더함)
  print(b);

  // 할당/비교 연산자
  // 할당
  num data;
  data = 1;
  data += 1; // 오른쪽의 변수에 왼쪽의 것을 더하여 다시 왼쪽이 변수에 집어넣는 것
  print(data);

  data *= 2; // 곱하기 버전
  print(data);

  data /= 2; // 나누기 버전
  print(data);

  data ~/= 2; // 몫을 나타내는 기능 (~/= 붙여서 쓰기)
  print(data);

  // 비교
  if (data == 1) {
    print('같습니다');
  }
  // 현재 위치에서 위와 아래의 출력값이 같다.
  print(data == 1);
  print(data != 1);

  // 타임 검사 연산자
  // is : 객체가 특정 타입이면 true
  // is! : 객체가 특정 타입이면 false
  num data3 = 1;
  print(data3 is num);
  print(data3 is! num);
  print(data3 == 1);
  print(data3 != 1);

  print(data3 > 1);
  print(data < 1);
  print(data3 >= 1);
  print(data <= 1);
}
