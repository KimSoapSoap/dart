class Dog {
  int age;
  String name;

  // 선택적 매개변수 -> 생성자의 소괄호 () 내부를 중괄호로 {}로 감싼다.
  // 특정 필드만 적용할 거면 특정 핃드만 { }로 감싸주면 된다. Dog(name, {age})  이런 식으로 하면 name은 필수 , age는 넣어도 되고 안 넣어도 되고.
  // 선택적 매개변수는 전달자를 생략 가능하다. 이때는 생략한 전달자는 null로 들어 온다.
  // 그렇기 때문에 null을 방지하기 위해 필드에 int? age;   String? name;  이렇게 null을 허용하거나
  // null을 허용하지 않고 반드시 초기화 시켜주려면 매개변수에 required 를 붙여 준다.
  // 자바의 builder 패턴과 비슷하다.
  // 이런 매개변수를 선택적 매개변수(한글로?) 영어로는 Named parameters라고 한다.
  Dog({required this.age, required this.name});

  @override
  String toString() {
    return "age : ${age},  name: ${name}";
  }
}

class Cat {
  int? age;
  String? name;

  //선택적 매개변수의 기본값 설정.
  Cat({this.age, this.name = "냐옹"});

  void cry() {
    print("야옹");
  }

  @override
  String toString() {
    return "age : ${age},  name: ${name}";
  }
}

void main() {
  //선택적 매개변수는 순서 상관이 없다.
  Dog d = Dog(name: "토토", age: 10);
  print(d);

  //cascade 연산자 : 점2개(..) 를 변수 뒤에 붙이면 init 그리고 setter와 같은 기능으로 사용할 수 있다.
  //여기서는 init이라고 배웠는데 변수에 .. 붙여도 되는 거 보니 setter 기능도 가능할 듯
  Cat c = Cat(age: 5)..cry();

  print(c);
}
