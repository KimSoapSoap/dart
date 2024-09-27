class Burger {
  String name;
  Burger(String name) : this.name = name {
    // 자바는 생성자가 실행되면 중괄호 스택이 실행되고 나서 객체가 생성되는데
    // Dart는 초기화 리스트라는 것이 존재하고 생성자가 실행되면 초기화 리스트가 실행되고 바로 객체가 생성되고 그 다음에 중괄호 스택이 실행된다.
    // 그렇기 때문에 Dart에서는 생성자 초기화를 생성자의 매개변수나 초기화 리스트에서 한다. 그리고 바로 객체가 생성되고 중괄호 스택이 실행되기 때문에
    // 여기서 초기화 시켜주는 게 아니라면 null로 간주해서 String? name을 해줘야 한다.
    print("버거 생성됨");
  }
}

class CheeseBurger extends Burger {
  String name;
  // super()가 생략돼있다. 만약 사용하고 싶다면 아래처럼 콜론 붙이고 super() 를 쓴다.
  // 매개변수 받아서 부모한테 바로 전달해줄 수도 있다.
  CheeseBurger(this.name) : super(name) {
    print("치즈 버거 생성됨");
  }
}

void main() {
  Burger b1 = CheeseBurger("치즈버거");
}
