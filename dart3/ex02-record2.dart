//Record

//여러가지 Record 예시
//그냥 record, List속 record, 변수 3개이상 다루는 record 등

void main() {
  final result = nameAndAge({
    'name': '민지',
    'age': 20,
  });

  final result2 = getNewJeans();
  final result3 = getNewJeansWithType();
  final result4 = getNewJeansWithType2();
  final result5 = getNewJeansWithType3();
  final result6 = getMinji();

  print('-----------result-------------');
  //List내부에 있는 게 아니므로 for 안 돌리고 그냥 result에서 꺼낸다.
  print(result);
  print(result.$1);
  print(result.$2);

  print('-----------result2-------------');
  for (var item in result2) {
    print(item['name']);
    print(item['age']);
  }

  print('-----------result3-------------');
  for (final item in result3) {
    print(item.$1);
    print(item.$2);
  }

  print('-----------result4-------------');
  for (final item in result4) {
    print(item.$1);
    print(item.$2);
  }

  print('-----------result5-------------');
  for (final item in result5) {
    print(item.name);
    print(item.age);
  }

  print('-----------result6------------');
  //List내부에 있는 게 아니므로 for 안 돌리고 그냥 result6에서 꺼낸다.
  print(result6);
  print(result6.$1);
  print(result6.$2);
  print(result6.$3);
}

//record
//방법1

//반환 타입 생략하고 return []로 이렇게 List<>로 반환하는 것을 반환타입을 (String, int) 이렇게 tuple로 명시하고
//리턴값을 []빼고  ()소괄호로 감싸고 변수에 as String, as int를 붙여서 casting 해줬다.
//참고로 반환 타입을 () 소괄호로 감싸면 tuple이다.
//이렇게 하면 nameAndAge를 사용할 때 Named parameter 호출하듯 호출해야 한다. 타입과 순서를 보장하기 때문에
//호출 결과를 result로 받았을 때 값을 사용하려면 list의 경우 result[0]로 꺼냈다면
//tuple은 result.$1,  result.$2 이렇게 꺼낸다.(1부터-> 약간 row 느낌이라서 index 1부터)

(String, int) nameAndAge(Map<String, dynamic> json) {
  return (json['name'] as String, json['age'] as int);
}

//일반적인 List<Map<String, dynamic>> 타입을 반환하는 함수
List<Map<String, dynamic>> getNewJeans() {
  return [
    {'name': '민지', 'age': 20},
    {'name': '해린', 'age': 18}
  ];
}

//리턴 타입인 List<Map<String, dynamic>> 타입을 List<(String, int)>로 변경하고 record로 만드는 예시.
//즉 Map을 교체했다기 보다 List<> 내부에 넣어줄 수 있다는 것으로 이해하면 된다.
//List<>내부를 맵을 없애고 ()로 감쌌고 리턴값도 [{},{}]이던 것을 맵을 없애서 {} 사라지고 대신 ()로 감싼다.
//리턴값 모양이 [(),()] 이렇게 된다.  ->   [(String, int), (String, int)]
List<(String, int)> getNewJeansWithType() {
  return [('민지', 20), ('해린', 18)];
}

// getNewJeansWithType과 완전히 같은데 이름을 정해줬다.
// String 타입은 name이 될 것이고 int 타입은 age가 될 것이라고 명시
List<(String name, int age)> getNewJeansWithType2() {
  return [('민지', 20), ('해린', 18)];
}

//반환 타입에 ()내부를 {}롤 감싸서 Named parameter같은 방식인 Named record로 변환
//리턴 타입에 이름을 붙여줘야 한다.
List<({String name, int age})> getNewJeansWithType3() {
  return [(name: '민지', age: 20), (name: '해린', age: 18)];
}

//record는 개수 2개든 3개든 상관 없다. 제한이 없고
//순서와 타입을 보장하는 것이 핵심이다.
(String name, String group, int age) getMinji() {
  return ('민지', '뉴진스', 19);
}
