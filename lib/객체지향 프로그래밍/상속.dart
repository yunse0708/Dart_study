// 상속
// 기본 형태
// 부모 클래스의 멤버 변수와 멤버 함수는 자식 클래스에서 재선언하지 않아도 바로 사용 가능
// 부모 클래스의 멤버 함수를 자식 클래스에서 재정의하고 싶다면 @override 어노테이션을 넣어서 재정의 가능
/*
class 부모 클래스명 {
  멤버변수;
  멤버함수() {

  }
}

class 자식 클래스명 extends 부모 클래스명 {
  @override
  멤버함수() {

  }
}
*/

class Car {
  String brand = 'car';
  String color = 'yellow';

  Car(this.brand);

  String getBrand() {
    return this.brand;
  }

  String getDesc() {
    return 'This is a car';
  }
}

class ElecCar extends Car {
  String color = "green";

  // 상속은 extends 사용
  // 상속 시, 생서자는 : super()로 부모 클래스 생성자를 실행해야 함
  ElecCar(String brand) : super(brand);

  @override
  String getDesc() {
    return 'This is an electric eleccar';
  }

  String getColor() {
    return '${this.color}, ${super.color}';
  }
}

void main2() {
  ElecCar Tesla = ElecCar('tesla');
  print(Tesla.getBrand());
  print(Tesla.getDesc());
  print(Tesla.getColor());
}

// 다중 상속과 mixin
// extends로 여러 클래스룰 다중 상속 받을 수 있음
// mixin을 통해, 여러 클래스를 상속받을 수 있음

class Person {
  int age;
  String name;
  Person(this.age, this.name);
}

// mixin 은 생성자가 없는 클래스를 정의하면 된다.
mixin Singer {
  String fanfor = "bts";
  void sing() {
    print("노래하다");
  }
}

// on은 특정 클래스를 상속받는 자식 클래스에서만 사용 가능하다라는 제약
// 다음 코드는 person 클래스를 상속받는 자식 클래스에서만 사용 가능하다라는 제약
mixin Programming on Person {
  void program() {
    print("프로그램하다");
  }
}

class Dave extends Person with Singer, Programming {
  Dave(int age, String name) : super(age, name);

  void hobby() {
    this.sing();
    print('나는 ${this.fanfor} 의 팬이다'); // 멤버벼수도 사용
  }
}

void main() {
  Dave dave = Dave(20, 'dave');
  dave.hobby();
}