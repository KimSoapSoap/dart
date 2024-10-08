// Future.delayed에 Duration객체에 3초를 설정해줬다. 통신 없이 3초 지연을 설정하고 이것을 마치 통신을 해서 3초 뒤에 받는다고 가정.
// 이 Future.delayed를 받은 Furture<int>는 3초 뒤 실행이라는 어음을 가지고 있다.
// 그렇기 때문에 이 어음을 처리하려면 처리하는 쪽에서 async(await를 품고 있는 함수의 소괄호와 중괄호 사이에 배치),  await(딜레이가 있는 혹은 통신해서 값을 받아오는 함수 호출 앞)를 가지고 처리하면 된다.
// 처리한다는 게 무슨 의미냐면 아래 void start(){~}에서 받으면 void start(){~}에 async, 값을 받아 오는데 시간이 걸리는 getNum() 호출 앞에 await붙여서 처리. 즉, async, await로 받아서 처리한다는 것이다.
// 이러면 main() 에서 start()를 실행하고 print('안녕')을 해두면 getNum()이 비동기로 처리되고 start()가 오래 걸려서 안녕이 먼저 출력되고 3초 뒤에 n + 10이 출력된다.
// main에서 start();와 print('안녕');을 순차적으로 처리하려면 어떻게 해줘야 할까? -> ex02

Future<int> getNum() {
  Future<int> fNum = Future.delayed(Duration(seconds: 3), () => 1);
  return fNum;
}

void start() async {
  int n = await getNum();
  print(n + 10);
}

void main() {
  start();
  print('안녕');
}
