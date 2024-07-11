// 데이터의 타입(data type)을 일반화하여, 데이터 타입을 미리 정해놓지 않고, 데이터에 따라. 데이터 타입을 정할 수 있도록 하는 방법
// 코드에[ 타입에 대한 유연성을 제공해줌(JAVA 언어 많이 사용)
// 제네릭 타입을 표현하기 위해 사용할 수 있는 문자가 있음

/* 문자
T : 일반 변수 선언시의 타입을 표현 (예:T data);
E : List<E> 와 같이 리스트에서의 타입을 표현
K, V : Map(K, V)로 키는 K, 값은 V로 표현
*/

// 타입 정의가 필요한 위치에 T를 기재 <- 데이터 일반화
// T를 A로 바꿔도 아무 문제는 없지만 T가 일반화 되어있음
class MyAxis<T> {
  T x;
  T y;
  MyAxis(this.x, this.y);
}

void main() {
  // 선언 시 명시적 타입을 넣어줌
  MyAxis axisInt = MyAxis<int>(10, 20); 
  print('${axisInt.x}, ${axisInt.y}');

  MyAxis axisStr = MyAxis<String>('x', 'y');
  print('${axisInt.x}, ${axisInt.y}');
}
