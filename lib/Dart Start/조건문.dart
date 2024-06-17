void main() {
  // if 구문
  /* if(조건식) {
      조건이 참일 떄 실행할 구문
  } */

  // if else 구문
  /* if(조건식) {
      조건이 참일 떄 실행할 구문
  } else {
      조건이 거짓일 떄 실행할 구문
  } */

  int data = 1;
  if (data > 0) {
    print("0보다 큽니다.");
    print(data);
  } else {
    print('0보다 작습니다.');
    print(data);
  }

  print('Hello');

  // Switch 구문
  int data2 = 4;
  switch (data2) {
    case 1:
      print('1111');
      break; // 써주지 않으면, 다음 case 구문에서 에러 발생
    case 2:
      print('2222');
      break;
    case 3:
      print('3333');
      break;
    default:
      print('1~3이 아닙니다.');
  }

  // 삼항연산자
  // (조건식) ? 참일 경우 실행 : 거짓일 경우 실행;
  int data3 = 4;
  (data3 > 0 ? print('양수') : print('음수'));
}
