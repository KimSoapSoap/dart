void main() {
  //var은 타입 추론이다.
  //처음 들어온 값의 타입으로 고정된다.
  //이후 var 변수에 다른 타입의 값이 들어오면 컴파일 에러 발생
  //컴파일 시 타입이 결정된다.

  //dynamic 또한 타입 추론이다.
  //타입이 고정이 아니고 마지막에 들어온 값의 타입이 된다.
  //런타임 시 타입이 결정된다.

  //Dart는 모든 것이 객체이다. 그래서 내부에 기능이 있는데 이중 모든 객체에서 사용 가능한 runtimeType이라는 기능이 있다.
  //runtimeType : int형 double형 var, dynamic, List<int> 등 가장 구체적인 타입을 확인할 수 있다

  // 매개변수에서는 타입을 생략하면 dynamic으로 타입추론을 한다.
  // 함수의 리턴 타입을 생략하면 dynamic이 리턴 타입이 된다.
  // 지역변수에서는 타입을 생략하면 var로 타입추론을 한다.

  var n1 = 1;
  var d1 = 10.1;
  var b1 = true;
  var s1 = "홍길동";

  //main에 있어서 메인 쓰레드가 코드를 순차적으로 읽기 때문에 main에서는 함수가 먼저 만들어져야 함수 사용 가능하다.
  //클래스였으면 컴파일 시점에서 로딩되고 객체가 생성되면 사용할 수 있기 때문에 메서드(클래스 내부에 있는 함수) 위치는 상관이 없다.
  void checkDynamicType(varibale) {
    print("dynamic 타입 확인: ${varibale.runtimeType}");
  }

  dynamic dyn = 1;
  checkDynamicType(dyn);
  dyn = "하이";
  checkDynamicType(dyn);
  dyn = 1.23;
  checkDynamicType(dyn);

  print("정수 : ${n1.runtimeType}");
  print("실수 : ${d1.runtimeType}");
  print("부울 : ${b1.runtimeType}");
  print("문자열 : ${s1.runtimeType}");

  print("dynamic: ${dyn.runtimeType}");
}
