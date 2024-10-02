void main() {
  List<int> numbers = [
    1,
    3,
    5,
    7,
    9,
  ];

//reduce()는 map()과 다르게 파라미터가 2개다.
//맨 처음엔 prev와 next에 index  0과 1이 들어가고
//그 다음부턴 prev가 처음의 연산 결과(a).   next가 index 2. 그럼 a와 index 2를 연산(b). 이 b가 다음의 prev가 도리 것이다.
//그 다음엔 이전 연산 b가 prev, next가 index 3.  b와 index 3의 연산(c)가 다음의 prev가 되는 식

//즉, 맨 처음에만 prev 와 next에 index 0과 1이 들어가고 그 연산이 그 다음의 prev. next는 index 2, 3, 4.. 이런 식으로 순회

//주의 : reduce는 List의 타입과 같은 타입만 리턴해줄 수 있다.
//즉 문자열 리스트의 경우 문자열만 리턴할 수 있고 문자열들의 길이의 합(int 타입)처럼 다른 타입은 리턴할 수 없다.
//이를 보완한 것이 fold

//예시용 익명 함수
  final result = numbers.reduce((prev, next) {
    print('----------------');
    print('previous : $prev');
    print('next: $next');
    print('total : ${prev + next}');

    return prev + next;
  });

  print(result);
  //실전용 람다
  final result2 = numbers.reduce((prev, next) => prev + next);

  print("==========");
  print(result2);

//String 예시
  List<String> words = [
    '안녕하세요.',
    '저는 ',
    '훈이 입니다',
  ];

  final sentence = words.reduce((prev, next) => prev + next);

  print(sentence);
}
