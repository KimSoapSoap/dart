//교재에 있는 거 예시

void main() {
  int n1 = 1;
  double d1 = 10.1;
  bool b1 = true;
  String s1 = "홍길동";

  //var 변수
  var num = 1;
  //num에 1이 들어가고 num의 타입은 int가 된다.
  //이후 num = "하이"; 이러면 int타입으로 정해진 변수에 String타입 값이 들어가서 에러가 뜬다

  // print() 함수는 Console에 출력을 해주는 함수입니다.
  // ${} 를 활용하면 문자열에 변수를 바인딩할 수 있습니다.
  print("정수 : ${n1}");
  print("실수 : ${d1}");
  print("부울 : ${b1}");
  print("문자열 : ${s1}");
  print("var 타입 변수: ${num}");
}
