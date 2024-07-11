// 브로드캐스트 스트림
// - 하나의 스트림을 생성하고, 여러번 listen() 함수를 실행하고 싶을 때

import 'dart:async'; // 패키지 import 

void main() {
  final controller = StreamController(); // StreamController() 선언

  // 여러번 리슨할 수 있는 Broadcast Stream 객체 생성
  final stream = controller.stream.asBroadcastStream();

  // stream의 listen() 함수를 실행하면, 값이 주입될 때마다 해당 메서드를 실행하게 됨
  final streamListener1 = stream.listen((val) {
    print('${val}'); // 비동기적으로
  });

  final streamListener2 = stream.listen((val) {
    print('${val}'); // 비동기적으로
  });

  // 값 주입하기
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}
