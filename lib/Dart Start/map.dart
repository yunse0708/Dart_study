void main() {
  // CREATE(생성)
  // Map에 넣은 타입을 키/값 각각 <키타입, 값타임>에 명시
  Map<String, int> myDict = {'DaveLee': 1, 'Funcoding': 2, 'David': 3};

  int data = 3;
  print(myDict);
  print(myDict.runtimeType); // runtimeType <- 타입을 확인하는 것 (Sting,int 등)
  // 출력 결과 <String, int>
  print(data.runtimeType); // 출력결과 int

  myDict['kate'] = 4; // 새로운 키와 값으로 키/값 추가 가능
  print(myDict);

  // Read
  print(myDict['DeveLee']);
  print(myDict.keys); // 키 만 가져오기
  print(myDict.values); // 값 만 가져오기
  print(myDict.entries); // 키/값 모두 가져오기

  var myDictKeys = myDict.keys; // 리턴 값 저장
  List<String> myDictKeyList = myDictKeys.toList(); // 리턴 값은 iterable
  print(myDictKeyList); // 리스트로 변환

  // Update(수정)
  myDict['DeveLee'] = 4;
  print(myDict);

  // Delete (삭제))
  myDict.remove('DeveLee');
  print(myDict);


  // 챰고로 알앋루만한 주요 Map 기능_합치는 기능  
  Map<String, int> myDict2 = {'yunseo': 1, 'siyeon': 2, 'yeseol': 3};

  // Map에 특정 키/값이 있는지를 확인하는 기능
  print(myDict2.containsKey('yunseo'));
  print(myDict2.containsValue(5));

  // Map 변수에 또다른 Map 변수 일괄 추가
  Map<String, int> myDict3 = {'Korea': 1, 'Japan': 2};
  myDict2.addAll(myDict3);
  print(myDict2);
}
