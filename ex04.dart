// Dart에서는 Null Safety개념이 있어서 기본적으로 모든 변수는 null을 허용하지 않는다.
// 하지만 타입 뒤에 물음표(?)를 붙이면 null을 허용할 수 있게 된다. 이를 물음표 타입이라고 한다.
// String 물음표 타입
String? username = null; // 전역 변수 (static 영역)

class A {
  // 타입 뒤에 ?가 붙어야 num에 null이 들어올 수 있다.  물음표(?)가 안 붙으면 null이 들어올 수 없다.
  int? num;

  // late 키워드는 지연 초기화(변수를 나중에 초기화)할 수 있게 해준다. late를 사용할 때는 변수를 선언하면서 값을 할당하지 않아도 되고,
  // 실제로 변수가 사용되기 전에 반드시 초기화가 되어야 한다. 만약 초기화되지 않은 상태에서 접근하려고 하면 런타임 오류가 발생
  late int num2;
}

void main() {
  print(username);

  // if는 실행문이다. -> return 값이 없다.
  // 삼항연산자는 expression이다. -> return 값이 있다.
  // Dart의 null 병합 연산자. 혹은 null 대체 연산자라고도 하고 return 값이 있다.
  // ->   A ?? B  : A가 null이 아니면 A를 리턴. A가 null이면 B를 리턴
  print(username ?? "임시아이디");
}
