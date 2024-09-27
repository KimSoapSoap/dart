//자바에서는 정보를 물려받기 위해 상속을 받지 않는다.
//정보를 받기 위해서는 생성자 주입을 받는다.
//상속은 동적 바인딩, 다형성에서 사용한다.

//composition
//Dart에서도 정보를 받기 위해서 생성자 주입을 받는다.

//is a 관계는 상속이 가능한 관계
//has a 관계는 composition이다.

// 아래가 기본적인 방법이다.
/*
class Engine {
  int power = 5000;
}

class Wheel {
  int count = 4;
}


class Sonata {
  Engine e;
  Wheel w;

  //생성자 초기화
  Sonata(this.e, this.w);

  // 아래 생성자 초기화 방법은 삼항연산자나 대체연산자를 이용해서 데이터를 조금 바꿀 때 사용
  // Sonata(Engine e) : this.e=e;

}


void main() {
  //생성자 주입. new를 사용하지 않고 객체를 생성해서 전달
  Sonata s = Sonata(Engine(), Wheel());
}
*/

//mixin과 with

mixin class Engine {
  int power = 5000;
}

mixin class Wheel {
  int count = 4;
}

//mixin 클래스를 with를 사용해서 해당 클래스의 정보를 가져다 쓴다.(여러 개 가능)
class Sonata with Engine, Wheel {}

void main() {
  //with를 사용해서 mixin 클래스를 연결하면 마치 본인 것처럼 사용할 수 있다.
  Sonata s = Sonata();
  print(s.power);
  print(s.count);
}
