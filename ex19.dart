//전개 연산자 (점3개)를 ...A 라고 하면 A를 전개하는 것이다 (대괄호 빼고)
//요소를 추가 한다.

void main() {
  var chobab = ["새우초밥", "광어초밥", "연어초밥"];
  var changeChobob = [...chobab, "장어초밥"];
  print(changeChobob);
}
