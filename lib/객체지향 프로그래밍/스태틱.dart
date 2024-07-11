// static으로 정의된 멤버 변수는 객체변수가 아닌, 클래스 변수가 됨
// 객체간의 공유해야하는 변수들은 static을 활용하여 클래스 변수로 활용할 수 있음

// 타입 정의가 필요한 위치에 T를 기재
class Count {
  static int count = 0; // 멤버변수 X, 클래스 변수 O 
  Count() {
    count++; // 클래스 변수는 객체 변수가 아니므로 this.count를 사용하지 않음
  }
  int getCount() {
    return count;
  }
}

void main() {
  // 선언시 명시적 타입을 넣어줌
  Count myCount1 = Count();
  Count myCount2 = Count();
  Count myCount3 = Count();
  // print (myCount1.count); // 객체 변수가 아니므로, 이와 같이 접근하면 에러가 남

  // 클래스 변수이므로, 모든 객체가 동일한 값을 접근할 수 있음
  print(myCount1.getCount());
}

