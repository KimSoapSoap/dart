void main() {
  final List<Map<String, String>> people = [
    {
      'name': '로제',
      'group': '블랙핑크',
    },
    {
      'name': '지수',
      'group': '블랙핑크',
    },
    {
      'name': '김채원',
      'group': '르세라핌',
    },
    {
      'name': '카즈하',
      'group': '르세라핌',
    }
  ];

  print(people);

//Person 객체의 name과 group이라는 필드를 생성자에서 required를 붙여서 객체를 생성할 때는 무조건 넣어줘야 한다.(아니면 컴파일 에러)
//하지만 어떤 List<Map<key, value>> 맵 리스트를 map()으로 순회하면서 Map의 데이터를 파싱해서
//Person객체에 매핑할 때는 required가 붙었지만 해당 리스트에 name과 group의 값이 반드시 존재한다는 보장이 없다.
//맵 리스트의 필드가 null이거나 변수명이 다르거나 할 수 있기 때문에
//Person에서 맵 리스트를 순회하면서 파싱할 때 x['name'] 과 x['group']에 뒤에 느낌표(!)를 붙여서x['name']! , x['group']!
//null이 아니라는 보장을 해주던지 아니면 Person객체의 name과 String 필드에 ?를 붙여서 null을 허용해야 한다.
//이런 보장을 안 해주면 컴파일 에러가 뜬다.

// 여기서 물음표(?)로 null 허용하는 것과 느낌표(!)롤 null이 아님을 보장하는 것의 차이는
// Person 객체의 필드에 ?를 붙이면 null이 들어올 수 있고
// x['name']! , x['group']!  를 붙이면 name이 아니라 name2 이렇게 돼있으면 Person을 파싱했을 때
// Person의 name필드가 name2 필드로 파싱이 된다. 즉 필드 이름이 달라도 그대로 파싱을 해버리더라.

  final parsedPeople = people
      .map((x) => Person(
            name: x['name']!,
            group: x['group']!,
          ))
      .toList();

  print(parsedPeople);

  final blackPink = parsedPeople.where((x) => x.group == '블랙핑크');
  print(blackPink);

  //map과 where을 같이 쓸 수도 있다. 중간메서드는 체이닝 가능
  //이런 방식으로 map, where에 fold도 붙일 수 있다.
  final result = people
      .map((x) => Person(
            name: x['name']!,
            group: x['group']!,
          ))
      .where((x) => x.group == '르세라핌')
      .toList();

  print(result);
}

class Person {
  final String name;
  final String group;

  Person({
    required this.name,
    required this.group,
  });

  @override
  String toString() {
    return 'Person(name : $name | group: $group)';
  }
}
