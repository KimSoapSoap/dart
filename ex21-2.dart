//ex21의 답안이다. 나는 age를 그냥 id로 바꿨다.

class Dog {
  int age;
  String name;
  Dog(this.age, this.name);
  @override
  String toString() {
    return 'Dog(age: $age, name: $name)';
  }
}

void main() {
  // CRUD
  final list = [Dog(1, "토토"), Dog(2, "레르코"), Dog(3, "우유")];
  print(list);
  // 1. 추가
  var add = [...list, Dog(4, "누렁이")]; // 4, "누렁이"
  print(add);
  // 2. 수정 (age가 1번인 아이의 이름을 토루토)
  var update = list.map((e) => e.age != 1 ? e : Dog(e.age, "토루토")).toList();
  print(update);
  // 3. 삭제 (age가 3번인 것을 삭제)
  var del = list.where((e) => e.age != 3).toList();
  print(del);

  var select = [...list];
  print(select);
}
