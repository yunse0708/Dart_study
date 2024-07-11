// Stream은 비동기 이벤트들의 연속을 다루며, 이벤트가 준비된 다음 이벤트를 전달함
// 구독자 패턴으로, 구독자(listen)이 관찰 대상(stream)을 구독하여, 관찰 대상에 변화가 발생하면 구독자에게 그 변화를 알려줌

// Stream 사용을 위해, dart:aasynce 패키지를 업로드 해야함
// 임포트 문법은 import 패키지명으로 파이선과 유사
import 'dart:async';

void main() {
  // fnal은 한 번 값을 대입하면 변경 불가
  final controller = StreamController(); // StreamController() 선언
  final stream = controller.stream; // Stream 가져오기

  // stream의 listen() 함수를 실행하면, 값이 주입될 때마다 해당 메서드를 실행하게 됨
  final streamListener1 = stream.listen((val) {
    print('${val}'); // 비동기적으로 동작
  });

  // 값 주입하기
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}
