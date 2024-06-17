void main() {
  // for 문
  /* for (초기화식, 조건식, 변화식) {
      조건이 참인 동안 실행할 구문)
    } */
  for (int i = 0; i < 10; i++) {
    // 여기에 프린트문이 여러개여도 되고 안에 다른 문자들이 i가 들어가도 가능
    print('hello');
  }

  // for.. in 문
  /* for (var 변수 in 배열) {
    처리
  } */
  List<String> myData = ['a', 'b', 'c'];
  for (var i in myData) {
    // var i <- 이 자리에 String적어도 가능하긴 하지만 var를 쓰기
    print(i);
  }

  Map<String, int> myDict = {'DaveLee': 1, 'Funcoding': 2, 'David': 3};
  for (var item in myDict.keys) {
    print(item);
  }

  // forEach 구문
  /* 컬렌션 forEach((변수) {
    처리
  }); */
  List<String> myData2 = ['a', 'b', 'c'];
  myData2.forEach((item) {
    print(item);
  });

  myDict.forEach((name, number) {
    print('$name : $number');
  });

  // while 문
  /* while (조건식) {
    처리
  } 
  -------------------------------
  do {
    처리
  } while (조건식)) */
  int data4 = 1;
  while (data4 < 3) {
    print(data4);
    data4++;
  }

  do {
    print(data4);
    data4++;
  } while (data4 < 1);
}
