// 클래스는 멤버를 가지고, 멤버는 멤버 변수(메서드), 멤버 변수(인스턴스 변수, attribute 또는 속성)로 구성

// class, 메서드, 인스턴수 변수 선언
class Car {
  String brand = "HOT"; // 초기값 필요

  // 생성자 선언
  Car(String brand) {
    this.brand = brand; // this = 자기 자신을 의미
  }

  // 메서드 선언
  String getBrand() {
    String brand = "WRONG";
    return this.brand;
    // 동일 이름 변수가 지역변수와 클래스 attribute 로 있다면,
    // this를 넣어서, 임시적으로 클래스 attribute 임을 저장 가능
    // 동일 이름 변수가 하나라먄, this 굳이 사용 X
  }
}

void main() {
  // 객체 선언 시(new Car() 와 같이 new사용 지원 하지만, 사용 안하는 게 일반적 <- 즉, new 작성 굳이 필요 X)
  Car myCar = Car('Tesla');
  // 객체 메서드 호출
  print(myCar.getBrand());
}

// 생성자 선언

class Car2 {
  String brand2 = "HOT";
  int price = 3000;

  // 아래 코드 더 축약 버전 Car2(this.brand2, this.price);
  Car2(String brand2, int price)
      : this.brand2 = brand2, // this = 자기 자신을 의미
        this.price = price;

  String getBrand() {
    String brand2 = "WRONG";
    return this.brand2;
  }
}

void main2() {
  // 객체 선언 시(new Car() 와 같이 new사용 지원 하지만, 사용 안하는 게 일반적 <- 즉, new 작성 굳이 필요 X)
  Car2 myCar2 = Car2('Tesla', 6000);
  // 객체 메서드 호출
  print(myCar2.getBrand());
}

// private attribute
// _로 시작하는 attribute는 private attribute로 선언된다.
// 일반적인 private attribute와 달리, dart 언어의 private attribute는 동일 파일 내에서는 접근 가능
class Car3 {
  String brand3 = "NOT";
  int _price2 = 3000;
  Car3(this.brand3, this._price2);
}

void main3() {
  Car3 myCar2 = Car3('Tesla', 6000);
  print(myCar2._price2);
}

// getter 와 setter
// getter(값을 가져오기) vs settter(값을 지정하기)
// 외부에 노출된 attribute 등을 정의하여, 값을 지정하거나, 가져올 수 있도록 함
// class 괄호 안에 넣어야함

class Car4 {
  String brand4 = "NOT";
  int _prices = 3000; // private attribute
  Car4(this.brand4, this._prices);

  // get으로 getter임을 선언, 외부에서 접근할 이름 선언
// price가 적합하지만, 외부 접근 이해를 위해, 임의로 이름 변경 후 호출
  int get whatIsPrice {
    return this._prices;
  }

// set으로 setter임을 선언하고, 외부에서 넣어진 값을 받을 인자를 정의
  set prices(int newPrice) {
    this._prices = newPrice;
  }
}

void main4() {
  Car4 myCar3 = Car4('Tesla', 5000);
  myCar3.prices = 1000;
  print(myCar3.whatIsPrice);
}
