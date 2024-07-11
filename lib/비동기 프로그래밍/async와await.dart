// 비동기 처리라도 때로는 기다렸다가 동기적으로 처리할 필요가 있는 경우
// async로 비동기 함수를 선언하고, aysnc로 선언된 비동기 메서드 안에서, 동기적 실행을 위헤 await 키워드를 사용해 명시적으로 기다릴 수 있움
// aysnc는 비동기 메서드 {} 괄호 전에 선언하며, await는 기다려야하는 메서드 바로 전에 선언해야 함

void main() {
  var future = Future<int>.delayed(Duration(seconds: 3), () => 1
  );

  future.then((value) async {
    print(value);
    await Future.delayed( // await 사용 시 async 저 위치에 위치하고 있기 아니면 에러 발생
      Duration(seconds: 1),
      () =>
        print('inside await')
    );
    print('after await');
  });
  print('last await');
}
