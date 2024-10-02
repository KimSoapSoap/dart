void main() {
//Future : 미래
//Future는 미래에 받아올 값이다.

  Future<String> name = Future.value("ksh");
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  print('함수 시작');

// Future의 delayted 함수는 2개의 파라미터를 받는다.
// delayed 함수 - 지연되다
// 1번 파라미터 - 지연할 기간 (얼마나 지연할건지) Duration
// 2번 파라미터 - 지연 시간이 지난 후 실행할 함수 (익명 함수도 가능)

//Future.delayed(a, b)는 a만큼 기다렸다가 b를 실행한다. 아래 예시는 a가 Duration b가 익명함수
  Future.delayed(Duration(seconds: 2), () {
    print('Delayed 끝');
  });

  print('함수 완료');

  addNumbers(1, 1);
  addNumbers(2, 2);
}

void addNumbers(int number1, int number2) {
  print('계산 시작 : $number1 + $number2');

  //서버 시뮬레이션
  Future.delayed(Duration(seconds: 2), () {
    print('계산 완료: $number1 + $number2 = ${number1 + number2}');
  });

  print('함수 완료 : $number1 + $number2');
}
