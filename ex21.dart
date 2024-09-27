class Dog {
  int id;
  String name;

  Dog(this.id, this.name);

  @override
  String toString() {
    return 'Dog(age: $id, name: $name)';
  }
}

//깊은 복사란?
//원 데이터를 깊은복사를 해서 사용한다.
//깊은 복사란 원 데이터를 이용하는데 거기서 필요한 것이 있으면 가져와서 쓰고 수정할 것이 있으면 새로운 객체를 만들면서 사용한다.
//결과적으로 원래의 데이터는 변함이 없다.

void main() {
  // CRUD.  원 데이터는 변하면 안 돼서 final을 붙여 둔다. (사실 요소는 변경할 수 있지만 건들지 않는다.)
  final list = [Dog(1, "토토"), Dog(2, "레르코"), Dog(3, "우유")];
  print(list);

  // 1. 추가
  // id:4, 누렁이 추가해보자.
  var add = [...list, Dog(4, "누렁이")].toList();
  print(add);

  // 2-1. 수정 (1)
  // id가 1번인 녀석의 이름을 토루토로 변경해보자. e는 list의 원소 하나씩 순회하는 것이다.
  // 깊은 복사를 해야 하므로 list를 수정하지 않는다. 즉 e의 값을 직접 수정하지 않는다.
  // 필요한 e의 필드값을 해와서 수정할 부분은 바꿔서 새로운 객체를 생성한다.
  var update = list.map((e) => e.id == 1 ? Dog(e.id, "토루토") : e).toList();
  print(update);

  // 2-2. 수정 (2)
  // id가 1번인 녀석의 이름을 토루토로 변경해보자.
  // 람다 말고 익명 함수를 사용해보자.
  var update2 = list.map((e) {
    if (e.id == 1) {
      //e.name을 바꾸면 list의 원소인 토토가 토루토가 되어버린다.
      //그렇기 깊은 복사를 해야 한다. 즉 내용을 수정하는 것이 아니라 객체의 필드까지 모두 복사하여 새로운 객체를 만들어야 한다.

      return Dog(e.id, "토루토");
    } else {
      return e;
    }
  }).toList();
  print(update2);

  // 3. 삭제
  // id가 3번인 것을 삭제 해보자.
  // 삭제는 boolean값을 리턴
  // id가 3인 것을 제외하고 출력하면 된다.
  var del = list.where((e) => e.id != 3).toList();
  print(del);

  // 4. 출력 (깊은 복사)
  var select = [...list];
  print(select);
}
