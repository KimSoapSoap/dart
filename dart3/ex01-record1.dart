// Record

// 리스트를 조금 더 규격화 해서 표현할 수 있는 기능
// 타입스크립트나 파이썬의 Tuple같은 기능이다.

//json을 우리가 값을 받는다고 했을 때 이 두 개의 값을 동시에 반환해주고 싶다
//대괄호[]로 감싸서 리턴할 때는 리턴타입이 안 적혀 있었고 타입추측이므로 return 값을 대괄호 []로 감쌌기 때문에 인해 List<>로 반환하게 된다.
//이렇게 하면 type에 대한 보장을 받을 수 없다. 순서와 타입을 동시에 보장을 받고 싶으면 tuple 타입으로 반환을 해준다.
//참고로 반환 타입을 () 소괄호로 감싸면 tuple이다.
//리턴타입을 (String, int) 즉 tuple 타입으로 명시하고 리턴값을 대괄호[] 가 아닌 소괄호 ()로 감싸서 반환을 하는데
//json값이기 때문에 누가 String이고 누가 int인지 명시해줘야 한다. 즉 변수 뒤에 as String, as int를 붙여 준다.
//tuple이라는 녀석이 생성되어 type의 순서를 보장해줄 수 있다.

// 반환값을 변수(a)에 넣고 접근할 때 변수에 리스트를 넣었다면 a[0] ,[a1] 이런식으로 하지만
// 우리가 방금 만든 방식으로 만든 json은 a.$1,  a.$2 이렇게 1번부터 접근하는데(튜플이 row쪽 느낌이라 index 1부턴가)
// ctrl + space 하면 변수타입도 다 보인다. Named parameter처럼 확인 가능

//만약 타입에 이름을 주고 싶다면? (String name, String int) 이렇게 해줄 수도 있다. -> ex02에서

void main() {
  final result = nameAndAage({
    'name': '민지',
    'age': 20,
  });

  print(result);
  print(result.$1);
  print(result.$2);
}

//record
(String, int) nameAndAage(Map<String, dynamic> json) {
  return (json['name'] as String, json['age'] as int);
}

/*
nameAndAage(Map<String, dynamic> json) {
  return [json['name'], json['age']];
}

*/
