void main() {
  List<Map<String, String>> people = [
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

//where 은 일종의 필터링이다.

  print(people);

  final blackPink = people.where((x) => x['group'] == '블랙핑크'); // 그냥 iterable 상태
  final blackPinkList =
      people.where((x) => x['group'] == '블랙핑크').toList(); // 리스트 반환
  final blackPinkSet =
      people.where((x) => x['group'] == '블랙핑크').toSet(); // Set반환

  print(blackPink);
  print(blackPinkList);
  print(blackPinkSet);
}
