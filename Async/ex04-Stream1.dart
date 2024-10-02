//Stream

//우리는 하나의 함수에 하나의 값만 리턴 받을 수 있고
//우리가 여러 개의 값을 리턴받을 수 있는 방법은 하나의 함수에 리스트 하나를 리턴 받아서
//그 내부에 있는 여러 개의 값을 받는 것 뿐이다.

//여러 순간에 여러 번 우리가 값을 받아내는 것은 함수를 여러 번 실행하는 것 외에는 방법이 없다.
//이것을 단점이라 생각해서 개발해낸 것이 바로 Stream이다.

//함수의 경우는 끝나는 순간이 완료 순간인데
//Stream의 경우에는 우리가 직접적으로 닫아주는 순간이 완료 순간이다.
//yeild라는 키워드를 사용해서 닫아주기 전까지 계속해서 값을 반환 받을 수 있다.

//Stream은 Dart에서 기본적으로 제공해주는 기능이 아니기 때문에 패키지를 불러 와야 사용가능하다.
//'dart:async' 패키지를 불러 오면 StreamController 클래스를 사용할 수 있다.
import 'dart:async';

void main() {
  //스트림컨트롤러 객체 생성 후 변수에 넣음
  final controller = StreamController();
  //스트림 컨트롤러로부터 스트림을 가져옴
  final stream = controller.stream.asBroadcastStream();

  //스트림에서 무언가 값이 들어 왔을 때 어떤 함수를 실행해야 값을 반환 받는다.
  //stream의 listen() 이라는 함수를 사용할 것인데 하나의 파라미터로 함수a를 받는다.
  //그리고 파라미터로 받는 이 함수a의 첫번째 파라미터도 값을 하나 받는다.
  //함수 a가 리스닝을 하고 있을 때 값이 들어오면 함수 a가 실행된다.

  //이런 리스너는 여러개 선언 가능하다.
  //단 controller.stream 하면 한 번만 리스닝을 할 수 있는 리소스가 생기기 때문에
  // 리스너를 여러 개 만들 거라면 controller.stream.asBroadcastStream()라는 함수를 붙여준다.

  //리스너 2개 이상일 때는 번갈아 가면서 값을 리스닝 해서 받는다.
  //그리고 functional programming하면서 배웠던 모든 함수들을 거의 대부분 사용할 수 있다.
  // where() 등
  final streamListener1 = stream.listen((val) {
    print('Listener 1 : $val');
  });

  final streamListener2 = stream.listen((val) {
    print('Listener 2 : $val');
  });

  final streamListener3 = stream.listen((val) {
    print('Listener 3 : $val');
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}
