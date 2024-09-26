void main() {
  //var은 타입 추론이다.
  var n1 = 1;
  var d1 = 10.1;
  var b1 = true;
  var s1 = "홍길동";
  print("정수 : ${n1.runtimeType}");
  print("실수 : ${d1.runtimeType}");
  print("부울 : ${b1.runtimeType}");
  print("문자열 : ${s1.runtimeType}");
}
