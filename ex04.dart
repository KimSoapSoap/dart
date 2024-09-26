// 기본적으로는 null Safety라는 개념이 있어서 변수에 null이 들어올 수 없다.
// 물음표 타입 -> 타입 뒤에 물음표(?)를 붙이면 null이 들어 올 수 있다.
// 강사님은 아래 물음표 붙인 타입을 String 물음표 타입이라고 부른다고 한다
// String? username = null;

String? username = null; // 전역 정적 변수 (static)

class A {
  // 타입 뒤에 ?가 붙어야 num에 null이 들어올 수 있다.  물음표(?)가 안 붙으면 null이 들어올 수 없다.
  int? num;

  // 지연 변수. 초기화를 나중에 해도 되게 해준다.
  late int num2;
}

void main() {
  print(username);

  // if는 실행문이다. -> return 값이 없다.
  // 삼항연산자는 expression이다. -> return 값이 있다.
  // Dart의 null 병합 연산자. 대체 연산자라고도 하고 return 값이 있다.
  // ->   A ?? B  : A가 null이 아니면 A를 리턴. A가 null이면 B를 리턴
  print(username ?? "임시아이디");
}
