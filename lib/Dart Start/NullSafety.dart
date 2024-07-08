// null Safety 상세
// 다음 코드는 에러 발생 시킴
// Error : Non-nullable variable ' name' myust be asssigned before it can be used

int? getItem() {
  return -10;
}

void main() {
  int? data1; // nullable 변수 사용

  // nullable 변수는 초기화 전에는 non-bullable 변수에 값 대입 가능

// int data2 = data1; // nullable 변수 초기화 전이므로 에러 발생
  data1 = 1;
  int data2 = data1; // nullable 변수를 초기화 하였음으로 에러 발생 X

  List<int?> yunList = [5, 4, null];
  // int yunList = yunList[0]; // myList[0] dms 5이지만, 타입이 int? 이므로 에러 발생
  // int data3 = getItem().abs(); // getItem()은 -10을 리턴하지만, 타입이 int? 이므로 에러 발생

  //  그래서 !는 Exclamation mark로 , 실행시 절대 null이 아니므로, 컴파일 에러 발생 시키지 말라고 dart 주는 것
  int myItem = yunList[0]!;
  int data3 = getItem()!.abs(); // abs() 는 절대값을 리턴해주는 함수

  print('${myItem}, ${data3}');
}

// null 조건 연산자
// null 이면 에러 발생시키지 않고, null을 리턴
void main2() {
  String? notString;
  print(notString?.length); // 그래서 ? 없으면 오류 발생, null로 출력이 됨(?붙이면)
}

// late 키워드
// 변수 초기화를 지연시켜줌
// 코드 상에는 초기 값이 필수인 경우, 부득이하게 미리 값을 입력 못할 때
void main3() {
  int factorial(int n) {
    return 1;
  }

  late int result;

  void calculateResult(int n) {
    result = factorial(n);
  }

  calculateResult(5);
  print(result);
}
