//pattern matching

//validation에서 자주 쓴다.

void main() {
  //Validation
  //이런식으로 캐스팅 해두면 name에 int를 넣으면 에러가 뜬다

  final minJi = ('민지', 20);

  final (name as String, age as int) = minJi;

  print(name);
  print(age);

  switcher('aaa');
  switcher('bbb');
  switcher(['1', '2']);
  switcher([1, 2]);
  switcher([1, 2, 3]);
  switcher([4, 5, 6]);
  switcher([4, 5, 6, 7]);
  switcher([6, 9]);
  switcher(['6', '9']);
  switcher(7);
  switcher(17);

  print(switcher2(5, true));
  print(switcher2(7, true));

  forLooper();

  ifMatcher();
}

//switch에 destructuring을 사용할 수 있다.
//이런 식으로 조건문을 validation 할 수 있다.
//case 나눠서 조건 거는 것이 유효성 검증이므로 validation이라 할 수 있다.
void switcher(dynamic anything) {
  switch (anything) {
    case 'aaa':
      print('match: aaa');
    case ['1', '2']:
      print('match: [1,2]');
    case [_, _, _]:
      print('match: [_, _, _]');
    case [int a, int b]:
      print('match: [int $a, int $b]');
    //case < 10 && > 5: // 이 예시를 실행할 땐 switcher(7);  switcher(17); 빼고 일단 잠시 주석처리
    //print('match: < 10 && > 5');
    default:
      print('no match');
  }
}

//또다른 switch 사용법
// 매칭 케이스 => 리턴값
// default는 언더스코어(_) 로 표현한다
// 무언가 값이 들어왔을 때 조건을 하나 더 넣고 싶으면 when을 사용하면 된다.
String switcher2(dynamic val, bool condition) => switch (val) {
      5 => 'match: 5',
      //값이 7이고 condition이 true일 때 (true일 때라는 조건을  굳이 추가로 안 넣어도 true면 실행 false면 실행 안 하니까.)
      7 when condition => 'match 7 and true',
      _ => 'no match',
    };

void forLooper() {
  final List<Map<String, dynamic>> members = [
    {
      'name': '민지',
      'age': 20,
    },
    {'name': '해린', 'age': 19}
  ];
  for (final member in members) {
    print(member['name']);
    print(member['age']);
  }

  print('---------------');
  //destructuring 하면서 넣은 것. var은 변수 선언이라 넣어준 것
  for (var {'name': name, 'age': age} in members) {
    print(name);
    print(age);
  }
}

//구조를 validation 하면서 동시에 destructuring
void ifMatcher() {
  final minJi = {
    'name': '민지',
    'age': 20,
  };

  print('--------------------');
  //name이 String, age가 int일 case에 매칭 시키므로 age가 String이라면 아무것도 안 뜬다.
  if (minJi case {'name': String name, 'age': int age}) {
    print(name);
    print(age);
  }
}
