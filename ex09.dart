// null 처리 방법

//리턴할 때도 타입에 ?를 붙일 수 있다. null이 리턴 될 수 있을 떄 붙여야 한다.
int? findById(int id) {
  return id == 1 ? 1 : null;
}

void main() {
  //findById(5)가 null이 들어왔을 때 int타입이 아니라 null이 들어올 수 있기 때문에 타입 뒤에 물음표를 붙이는 방법
  int? result1 = findById(5);
  print(result1);

  //null 대체 연산자. java에서 orElse와 같다.
  int result2 = findById(5) ?? 0;
  print(result2);

  // 변수 뒤에 느낌표는 이 변수가 절대 null이 아니라는 것.
  // A!.do();
  double? result3 = findById(1)!.toDouble();
  print(result3);

  // 변수 뒤에 ? 물음표는 변수가 null이 아닐 때 점(.) 뒤의 코드를 실행하라는 것. null이면 점(.) 뒤의 코드 실행 안 하고 null이 된다.
  // A?.do();
  // 이를 null일 때 대체 연산자와 함께 사용하면 A?.do() ?? 0  이렇게 사용할 수 있고
  // A가 null이 아니면 A?.do()가 실행되는 것이고 A가 null이면 A?.do()는 그냥 null이 되는데 이때 대체 연산자에 의해 A?.do()가 null이면 0

  double? result4 = findById(5)?.toDouble() ?? 0;
  print(result4);
}
