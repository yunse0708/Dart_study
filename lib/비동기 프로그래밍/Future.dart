/* 
- Future는 지금은 없지만, 미래에 요청한 데이터 혹은 에러가 담길 공간을 의미함
즉, Future는 바로 완료되지 않은 연산을 다룸

- Future 객체를 만들기 위해서는 Future<T> 제네릭 타입으로 사용함(Future가 제네릭 클래스임)
- Future.delayed() : 일정 시간 실행을 대기하고 실행할 수 있는 비동기 연산(Future 객체를 리턴하는 constructor임)
첫번째 인자는 Duration 객체, 두번째 인자는 익명함수로 Duration 객체에서 선언한 시간 만큼 기다린 후 실행
내부적으로 이벤트 루프에 등록되어, 일정시간 후, 이벤트 발생 및 실행되며, 실행 결과를 받는 방법은 다음과 같이 두가지 방법
- callback 사용
- async 와 await 키워드 활용
*/

var future = Future<int>.delayed(Duration(seconds: 1), () => 100); // 람다함수 사용

