void main() {
  // Create (생성)
  // Set에 넣을 타인ㅂ <>에 명시
  Set<String> data = {'a', 'b', 'c'};
  data.add('d'); // add()로 추가 기능
  print(data);
  data.add('a'); // 중복 추가 불가
  print(data);

  // Read (읽기)
  // 별도 인덱스 번호로 접근 불가 , update도 안됨
  print(data);

  // Delete (삭제)
  data.remove('a');
  print(data); // Date != data

  // 참고로 알아둘만한 주요 Set 관련 기능
  print(data.contains('a')); // data 안에 a가 있냐?없냐?
  print(data.containsAll(['a', 'b', 'c'])); // 여러개 확인하는 것. 그 중에 하나라도 없으면 false
  print(data.length); // data의 길이

  // 집합에서의 교집합과 차집합
  Set<String> data2 = {'a', 'b', 'd'};

  var data3 = data.intersection(data); // information == 교집핣
  print(data3);
  print(data.toList()); // 리스트로 변환

  var data4 = data.difference(data2); // information == 차집합
  print(data4);
}
