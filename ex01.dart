// class 내부에 없는 변수는 static영역에 올라 간다. 새로 new 해줄 필요가 없다
// class 외부 static -> 전역 static.
// 프로그램 실행될 때 한 번만 생성된다.
// import만 하면 어디에서든 사용할 수 있다.
// 가능한 사용하지 않는 것이 좋다. 충돌 날 수 있으므로.
String name = "Hello World";

//메서드가 아니라 함수다.(기능을 가지는 것 -> 상태를 바꾸는 것이 아니다.)
//class 외부에 있기 때문에 전역 static이다.
void hello() {
  // hello()가 호출될 때 사용 준비가 되는 것으로 stack영역에 올라간다.
  // hello()가 static인 것은 hello()만 프로그램 실행 전에 사용준비가 되는 것이고
  // 그 내부에 있는 것들은 hello()가 호출될 때 stack에 올라가는 것이다.
  int num = 10;
  print(num);
}

// 클래스는 객체가 생성될 때 heap
class Animal {
  int id = 1;
  int num = 5;
  //클래스 static -> 클래스 이름 찍고 접근
  static String name = "강아지";

  void speak() {
    // 메서드 (상태 변경할 때 사용. 상태란 멤버변수를 일컫는다)
    num = 1;
  }
}

void main() {
  print(name); // Hello World
  print(Animal.name); // 강아지

  //동물 객체 생성. java처럼 new를 안 붙여도 된다. new 생략 가능
  Animal a = Animal();
  a.speak(); // 강아지
  print(a.num); // 1
  hello(); // 10
}
