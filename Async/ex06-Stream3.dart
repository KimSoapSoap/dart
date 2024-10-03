import 'dart:async';

void main() {
  playAllStream().listen((val) {
    print(val);
  });

/*
  calculate(1).listen((val) {
    print('calculate(1): $val');
  });

  calculate(2).listen((val) {
    print('calculate(2): $val');
  });
  */
}

Stream<int> playAllStream() async* {
  yield* calculate(1);
  yield* calculate(2);
}

Stream<int> calculate(int number) async* {
  for (int i = 0; i < 5; i++) {
    yield i * number;

    await Future.delayed(Duration(seconds: 1));
  }
}



/* 이렇게 생긴 함수가 있을 때 return 값이 생략되어 dynamic인데 이를 int로 명시해주고
   그걸 Future<int> 로 받는다. 이때 Future로 받으니 () {} 사이에  async 를 붙여준다. 
   이 Future를 Stream으로 바꿔서 Stream<int> 를 해주고 async끝에 *을 붙여준다.
   그리고 return을 yield로 바꿔준다. 그러면 어떤 값이 생길 때마다, 즉 yeild가 실행될 때마다
   이 calculate 함수를 리스닝하고 있는 리스너에다가 값을 뿌려줄 수 있다.

   Future와 관련된 async 함수를 async* 로 된 함수에서 사용할 수 있는 방법
   calculate 끝에 await Future.delayed(Duration(secconds: 1)); 를 붙여 준다

  calculate 를 호출하는 함수 2개를 만들었을 때 하나 끝날 때까지 기다리는 게 아니라
  동시 진행이 된다. 즉 비동기로 처리하고 있다는 것을 알 수 있다.
  이를 동기적으로 하나의 호출이 끝나면 다음 호출을 실행하도록 하고 싶다면?
  매개변수가 없는 Stream을 하나 만들어 준다. async*을 () {}사이에 배치하고
  return 대신  yield*를 사용한다. yield*를 여러 개 해줄 수 있다.
  이렇게 playAllStream()  라는 Stream을 만들었다면 여기 내부에
  yield* calculate(1);
  yield* calculate(2);
  이런식으로 기존에 Stream을 yield* 붙여서 호출하는 함수를 만들어 놓고
  이를 호출해보면 내부에 yield*를 붙여서 동기적으로 실행된다.

  여기서 *의 의미는 그냥 yield는 값을 하나하나 순서대로 가져올 떄 사용이 되지만
  yield* 는 뒤에 호출 뒤는 스트림의 모든 값을 다 가져올 때 사용한다.
  Future의 await와 비슷하다.

  동기적으로 실행하게 된다.

  라이브러리들이 잘 구현돼있어서 이렇게 로우 상태의 패키지를 자체적으로 쓸 일은 잘 없다.
  하지만 이렇게 기본 원리를 이해하고 있을 필요는 있다.



calculate(int number) {
  for (int i = 0; i < 5; i++) {
    return i * number;

  }
  */

