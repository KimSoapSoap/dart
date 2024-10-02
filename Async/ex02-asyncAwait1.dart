void main() async {
  Future<String> name = Future.value("ksh");
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);
  print('훈이 출발');

  Future.delayed(Duration(seconds: 2), () {
    print('Delayed 끝');
  });

  await addNumbers(1, 1);
  await addNumbers(2, 2);
  print('훈이 도착');
}

// async는 javascript와는 조금 다른 위치에 적어주는데 (javasciprt는 함수 앞에 async)
// dart는 함수의 소괄호 () 와 중괄호 {} 사이에 async를 적어 준다.
// Futre를 리턴해주는 함수는 모두 Async함수들이다.
// 이런 Future를 리턴하는 함수들 앞에는 await를 붙일 수 있다.

// 우리는 await를 사용해서 async코드를 기다리는 것이다.

// void를 리턴하는 함수를 Future를 리턴하는 함수로 만들려면?
// Futre<void>로 리턴하도록 만들면 된다. 그럼 await를 사용 가능하다. 그래서 async도 활용 가능
// 즉 Future<T> 로 감싸면 된다. -> 모든 함수에 다 적용이 가능하다.

// addNumbers를 Future<T>로 감싸서 위에 함수 호출에 await를 붙이고 main에 async 붙였다
// async await 안 붙였을 때는 계산 시작 1, 2가 바로바로 순차적으로 실행되고 2초 뒤에 계산 완료가 연속으로 완료됐지만
// async await를 붙이고 나서는 계산 1이 계산 시작되고 계산완료 된 뒤에 계산 2가 계산 시작 후 계산 완료 된다.
// 즉 await 붙으면 aync를 기다렸다가(여기선 main) 완료되면 다음 것 실행

Future<void> addNumbers(int number1, int number2) async {
  print('계산 시작 : $number1 + $number2');

  //서버 시뮬레이션
  await Future.delayed(Duration(seconds: 2), () {
    print('계산 완료: $number1 + $number2 = ${number1 + number2}');
  });

  print('함수 완료 : $number1 + $number2');
}
