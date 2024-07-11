// callbacks
// 비동기 실행결과를 callback을 사용하여 받을 수 있음
// Future<T> 클래스는 다음과 같이 callback 관련 세가지 메서드를 제공함
// - then() : 비동기 실행이 성공했을 시의 결과 값을 받을 수 있는 메서드
// - catchError() : 비동기 실행이 실패했을 시의 에러 값을 받을 수 있는 메서드
// - whenComplete() : 비동기 실행이 성공하든, 실패하든 완료 후, 실행할 수 있는 메서드

void main() {
  print(100);

  // 비동기 실행이므로, 100이 먼저 출력된 후 200이 3초 후 출력되고, 비동기 실행이 완료된 후 whenComplete가 출력됨
  var future = Future<int>.delayed(
      Duration(seconds: 3), () => throw Exception()); //seconds : ? <-- 몇초 되인지 
  future.then((value) => print(value)).catchError((onError) {
    print(onError);
  }).whenComplete(() {
    print("Whencomplete");
  });
  print(300);
}
