//main에서 동기적 처리를 하려면 main에도 async와 await가 필요하다.
//start()는 리턴타입이 void인데 이때 async를 사용하려면 이 void도 Futre<void>로 해줘야 한다.
//이러면 start()가 3초 뒤에 실행되고 나서 안녕이 출력된다.

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
