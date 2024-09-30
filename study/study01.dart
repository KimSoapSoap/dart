void main() {
//Future : 미래
//Future는 미래에 받아올 값이다.

  Future<String> name = Future.value("ksh");
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  print('함수 시작');

// 2개의 파라미터
// delayed - 지연되다
// 1번 파라미터 - 지연할 기간 (얼마나 지연할건지) Duration
// 2번 파라미터 - 지연 시간이 지난 후 실행할 함수
  Future.delayed(Duration(seconds: 2), () {
    print('Delayed 끝');
  });
}
