// null safety
// -> 다음 코드는 에러 냄
// -> Error : Non-nullable variable ' name' myust be asssigned before it can be used

// non-nullable 변수는 사용 전 반드시 초기화를 해야함
// 또는 ? 타입 선언 시 넣어서, null이 가능한 변수로 만들어야 함
// 즉, 모든 변수는 기본적으로 null 값을 가지려면 ? 를 넣어서 명시적을 null 값도 가질 수 있도록 선언해야 힌다.

void main() {
  String? name;
  print(name);
}

// 함수
// 함수 선언과 사용은 기본 프로그래밍 언어와 동일

int plus(int a, int b) {
  return a + b; // return 값도 int
}

void main2() {
  print(plus(1, 2));
}

// 파라미터 종류
// Required positional parameters : 다른 언어에서 볼 수 있는 기본 파라미터 (순서대로 변수명 명시 없이, 파라미터 값 대입 가능)
// 플러터 위젯 핵심 사용과 연관 중요 별표 세게

// Named paramerters <- requried, positional이 아님
// {} 안에 작성, requried 키워드를 쓰지 않으면 optional로 파라미터 값을 넣지 않아도 된다
// 파라미터 값 대입 시, 순서를 다르게 해도 되며, 변수명 명시 필수
void plus2({int? a, int? b}) {
  print(1); // return 값도 int
}

void main3() {
  plus2(a: 1); // 값을 넣는 방법
}

// 필수 입력 파라미터
void plus3({int? a, required int? b}) {
  print(1); // return 값도 int
}

void main4() {
  plus3(b: 2);
}


// Optional positional parameters
// [] 괄호로 optional positional parameters를 선언 할 수 있음
// 기본값을 사용할 수 있으며, 이는 함수 호출 시 변수를 지정하지 않을 경우 사용
void showParms(int a, int b, [String? c]) {
  print('${a}, ${b}, ${c}'); // return 값도 int
}

void main5() {
  showParms(2, 1);
  showParms(2, 1, 'Dave');
}


