// main에서 안녕이 먼저 출력되지 않고 순차적으로 출력되려면 어떻게 해야될까?
// main()전체를 비동기로 처리하게 하면 된다.
// start()에 await를 붙여서 비동기 처리를 하면 main()에도 async를 붙여야 한다. 결과적으로 main() 전체가 비동기 함수가 된다.
// 그럼 main()전체가 비동기이기 때문에 await start()가 실행 되고 나서 print가 출력된다.
// 여기서 주의할 점이 start()는 리턴타입이 void인데
// 앞에 await가 붙으면 비동기 작업을 기다리는 것이므로, 이를 포함한 함수는 항상 async가 붙여야되고 async가 붙으면 Future<T> 타입을 반환해야 하지만
// void의 경우 리턴하는 값이 없기 때문에 void로 적어놔도 내부적으로 Future<void>로 리턴된다.
// 이렇게 main()이 전체 비동기 함수가 돼서 start()가 3초 뒤에 실행되기까지 기다렸다가 실행 후 그 다음에 안녕이 출력된다.

// 따라서 main() 내부에 동기,비동기가 혼재돼있을 경우 순차적으로 실행시킬지 말지는 main()자체가 비동기이냐(async) 아니냐에 따라 달라진다.
// 예를들어 main()이 로그인 시도이고 start()가 로그인 뒤 화면에 필요한 정보를 불러오는 것이고 print()가 화면이라면
// main()이 비동기가 되어야 시간이 걸리는 await start()를 기다렸다가 이후에 화면이 그려질 것이다.
// 만약 main()에 async가 없이 그냥 동기 처리를 한다면 start()가 값을 기다리는 동안 그 다음 코드인 화면이 그려지게 된다.
// 정보가 없는데 화면을 먼저 그리게 되면 필요한 정보를 못 받았는데 화면이 그려지므로 다 비거나 하기 때문에 순서를 고려한 적절한 동기 처리가 필요하다.

Future<int> getNum() {
  Future<int> fNum = Future.delayed(Duration(seconds: 3), () => 1);
  return fNum;
}

Future<void> start() async {
  int n = await getNum();
  print(n + 10);
}

void main() async {
  await start();
  print('안녕');
}
