// 추상클래스는 여러 클래스에 중복되는 속성, 메서드를 하나의 기본 클래스로 작성하는 작업
// 추상클래스는 implements 키워드를 통해 적용 가능하며, 추상 클래스에서 정의한 멤버변수/함수는 implements 되는 클래스에서 재정의되어야 함
// 여러 추상 클래스를 implement 할 수 있음
// 인터페이스 지원 X
abstract class Person {
  // 추상 클래스도 멤버변수/함수 모두 선언 가능
  // 멤버함수에는 실제 값이 들어가면 안됨
  int? age;
  String? name;

  // 추상 클래스에 멤버 함수에 코드가 정의되면, implementes 실행 시, 에러가 남
  String? getName(); // 실제 코드 선언하면 안된다
}

abstract class Developer {
  List<String> preference = []; // 변수는 빈값초기화 가능

  void printSkill(); // 메서드는 실제 코드 작성 시 에러 상속받을 때 (지금은 X)
}

// 여러 추상 클래스를 implements 할 수 있음
class Dave implements Person, Developer {
  // 다중 상속
  // 추상 클래스의 멤버변수 재정의 필요 재정의 필요 재정의 필요
  int? age;
  String? name;
  List<String> preference = [
    'python',
    'fastapi',
    'js',
    'sklearn',
    'pytorch',
    'dart'
  ];
  Dave(this.age, this.name);

  // 추상 클래스의 멤버 변수 함수 재정의 필요
  String? getName() {
    return this.name;
  }

  void printSkill() {
    preference.forEach((item) => print(item));
  }
}

void main() {
  Dave dave = Dave(25, 'Dave Lee');
  print(dave.getName());
  dave.printSkill();
}
