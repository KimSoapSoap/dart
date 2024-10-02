void main() async {
  Future<String> name = Future.value("ksh");
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  final result1 = await addNumbers(1, 1);
  final result2 = await addNumbers(2, 2);

  print('result1: $result1');
  print('result2: $result2');
  print('result1 + result2: ${result1 + result2}');
}

// 숫자를 다루고 있었기에 Future<int>로 감싸서 리턴값을 넣어줬다.
// await를 붙였기에 async를(여기선 main) 기다리면서 순차적으로 실행이 된다.

Future<int> addNumbers(int number1, int number2) async {
  print('계산 시작 : $number1 + $number2');

  //서버 시뮬레이션
  await Future.delayed(Duration(seconds: 2), () {
    print('계산 완료: $number1 + $number2 = ${number1 + number2}');
  });

  print('함수 완료 : $number1 + $number2');

  return number1 + number2;
}
