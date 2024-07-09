// 익명 함수
/* 
(매개변수) {
  함수 코드
}
*/

// 람다 함수
// (매개변수) => 한 라인의 코드

void main() {
  List<String> yunseo = ['a', 'b', 'c'];
  // 익명함수 활용
  yunseo.forEach((item) {
    print(item);
  });
  // 람다 함수 활용
  yunseo.forEach((item) => print(item));
}

// 예외 처리
// try catch 구문
/*
try {
  처리
}
catch(e) {
  예외일 경우
} finally {
  마지막에 처리
}
*/

void main2() {
  var data = 1;
  try {
    assert(data == 0); // assert는 조건, 은 조건이 맞지 않으면, 에러 발생시킴
  } catch (e) {
    print(e);
  } finally {
    print("finally");
  }
}


