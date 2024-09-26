class Dog {
  String name;
  int age;
  String color;
  int thirsty;

/*
자바에서처럼 이런 식으로 중괄호 내부에서 값을 초기화 해줄 수 없다.
조건문을 사용하거나 연산을 해서 값이 안 들어갈 수도 있기 때문이다.
즉 생성자의 중괄호 내부에서 null이 아님을 보장할 수 없기 때문에 생성자에 중괄호 지원x
중괄호 대신 콜론 (:)을 붙여 준다. -> 이때는 필드 초기화 구문을 콤마로 이어주고 끝에 세미콜론(;)
다른 방법으로는 필드에 late를 붙이거나 타입 뒤에 ?를 붙여주면 되긴 한다.
  Dog(String name, int age, String color, int thirsty) {
    this.name = name;
    this.age = age;
    this.color = color;
    this.thirsty = thirsty;
  }
  */

  //생성자에 : 를 써서 필드를 초기화해주는데 Dart에서 이 방법을
  //초기화 리스트라고 한다.
  //간단한 연산자로는 삼항연산자 혹은 null 병합 연산자(대체 연산자)  A ?? B 정도는 사용할 수 있다.
  Dog(String name, int age, String color, int thirsty)
      : this.name = name,
        this.age = age,
        this.color = color,
        this.thirsty = thirsty;
}

class Cat {
  String name;
  int age;
  String color;
  int thirsty;

  //생성자에 중괄호를 사용하지 않는 것은 값을 변경해서 null이 들어갈 수도 있기 때문이었다.
  //이 방법을 사용하면 값 변경 없이 바로 값을 전달하기 때문에 간편한다. 하지만 받아서 조금 변경해줄 필요가 있다면 위에 방법으로.
  Cat(this.name, this.age, this.color, this.thirsty);
}

void main() {
  //new 생략 가능
}
