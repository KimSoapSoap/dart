void main() {
  print(whoIsHe(Idol()));
}

//final로 클래스를 선언하면
//extends, implements, mixin 의 대상으로 사용이 불가능
//이 키워드의 대상이 될 수 없다는 것이지 final class가 다른 대상을 extends 하거나 할 수는 있다.
final class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});
}

// base class를 선언하면 extends의 대상은 될 수 있지만 implements의 대상은 될 수 없다.
// Dart에는 extends가능한 녀석과 implement 가능한 녀석이 나눠져 있지 않았다.
// 그냥 일반 class에 extends나 implements를 썼다.
// base class를 대상으로는 extends만 가능하고 implements가 불가능.

// base, sealed, final로 선언된 클래스만 base class를 대상으로 extends 가능하다 (sealed는 아래에서 배울 것)
base class Person2 {
  final String name;
  final int age;

  Person2({required this.name, required this.age});
}

//interface로 선언하면 implements의 대상만 가능하다. (extends 대상으로는 불가능)
interface class Person3 {
  final String name;
  final int age;

  Person3({required this.name, required this.age});
}

// sealed 클래스는 abstract 이면서 final이다.
// 그리고 패턴매칭을 사용할 수 있도록 해준다.
sealed class Person4 {}

class Idol extends Person4 {}

class Engineer extends Person4 {}

class Chef extends Person4 {}

//상속관계일 때 부모는 자녀를 품을 수 있다. 즉, 부모타입에 자녀를 넣어서 확인할 수 있다
//즉 Person4를 상속받고 있는 자녀를 whoIsHe에 넣을 수 있다. 부모 타입을 받고 있으므로 자녀는 다 들어갈 수 있다.
//그러면 들어간 자녀타입을 확인
String whoIsHe(Person4 person4) => switch (person4) {
      Idol i => '아이돌',
      Engineer e => '엔지니어',
      _ => '나머지',
    };

//mixin 클래스
//mixin은 extends나 with를 사용할 수 없다. 그렇기 때문에 mixin class도 마찬가지로 extends나 with사용이 불가능하다.
//클래스는 on 키워드를 사용할 수 없다. 그렇기 때문에 mixin class도 on키워드를 사용할 수 없다.
// 즉 mixin과 class에서 안 되는 것은 mixin 클래스에서도 안 된다는 것
mixin class AnimalMixin {
  String bark() {
    return '멍멍';
  }
}

class Dog with AnimalMixin {}
