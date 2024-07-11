// 생성한 객체의 함수호출, 필드 접근을 순차적으로 수행할 수 있음
// 중간 과정에서 어떤 값이 반환되더라도 무시함
class Car {
  String name;
  String type;

  Car(this.name, this.type);

  void printName() {
    print(this.name);
  }

  void printType() {
    print(this.type);
  }
}

void main() {
  Car myCar = Car('Tesla', 'Model3');
  myCar.printName();
  myCar.printType();

  // .. 을 사용하면, 선언한 객체의 메서드를 연속으로 호출할 수 있음
  // 세미콜론은 마지막에만 그 전에는 작성하지 않음
  Car('Hyundai', 'i30') // 별도 객체 변수를 선언하지 않음
  ..printName() // 생성된 객체에서 실행할 메서드를 순서대로 ..을 작성하면 됨
  ..printType();
}
