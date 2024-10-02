void main() {
  Set BlackPinkSet = {
    '로제',
    '지수',
    '제니',
    '리사',
  };

//Set, Map, List 뭐든 toSet()이나 toList()로 반환할 수 있다.
//toList()나 toSet()으로 반환 안 하고 그냥 놔두면 iterable타입

  final newSet = BlackPinkSet.map((x) => '블랙핑크 $x').toSet();
  final newList = BlackPinkSet.map((x) => '블랙핑크 $x').toList();

  print(BlackPinkSet);
  print(newSet);
  print(newList);
}
