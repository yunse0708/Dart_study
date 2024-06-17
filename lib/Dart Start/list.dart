void main() {
  // String형 List
  // creat(생성), 리스트에 넣을 타입을 <> 에 명시
  List<String> myList = ['Dave', 'soul', 'funCoding'];
  print(myList);
  myList.add('david'); // add() 아이템 추가
  print(myList);

  // Read(읽기)
  print(myList);
  print(myList[0]);

  // update(수정))
  myList[2] = 'andy';
  print(myList);

  // Delete(삭제)
  myList.remove('andy');
  print(myList);
  myList.removeAt(1);
  print(myList);

  // 사이즈확인
  print(myList.length);

  // int형 List
  // creat(생성), 리스트에 넣을 타입을 <> 에 명시
  List<int> myList2 = [10, 20, 30, 40];
  myList2.removeRange(0, 2);
  print(myList2);

  // 리스트변수.where((각아이템을지정한변수) => 조건)
  // 조건에 맞는 아이템만 가져오는 기능
  print(myList2.where((item) => item > 30));

  // 리스트변수.removeWhere((각아이템을지정한변수) => 조건)
  // 조건에 맞는 아이템만 삭제하는 기능
  myList2.removeWhere((item) => item > 15);
  print(myList2);

  // 리스트변수.map((각아이템을지정한변수) => 각아이템변경구문)
  // 각 아이템을 일괄적으로 변경하고 싶을 떄 우용하게 활용 가능
  // 단, 리턴 값은 리스트가 아닌 Iterable 클래스
  // Iterable 클래스는 컬렉션 공통 클래스로 리스트로 변환하려면 toList()를 사용해야 함
  // ->  이걸 쓴다고 해서 원본데이터가 덮어씌워지는 것은 아님
  var myList3 = myList2.map((item) => item + 5);
  List<int> myList4 = myList3.toList();
  print(myList4);

  // 리스트변수.clear()
  // 리스트에 들어있는 전 아이템을 삭제
  myList4.clear();
  print(myList4);
}
