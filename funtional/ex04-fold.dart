void main() {
  List<int> numbers = [
    1,
    3,
    5,
    7,
    9,
  ];

  //fold는 맨 처음 previous에 0(fold의 첫 번째 전달자), next에 리스트의 index 0이 들어가고 그 연산 결과(a)가 다음의 previous가 된다.
  // 이후 reduce와 마찬가지로 다음 previous는 이전의 연산결과(a)가 되고 next는 index 1. 이 둘의 연산결과(b)가 다음의 previous가 된다.

//fold는 fold<T>로 리턴 타입을 명시할 수 있지만 생략하면 리턴 타입을 추론한다.(리턴타입 추론은 dynamic. 하지만 명시하는 보기 편함)
//즉, fold가 reduce와 다른 점은 초기 previous가 리스트의 index 0이 아니고 우리가 전달해주는 값으로 시작할 수 있다.
//그리고 return 타입을 우리가 원하는 타입으로 설정해줄 수 있다는 것이 무엇보다 큰 장점이다.

  final sum = numbers.fold(0, (prev, next) {
    print('---------------');
    print('previous : $prev');
    print('next: $next');
    print('total : ${prev + next}');

    return prev + next;
  });

  print(sum);

  final sum2 = numbers.fold<int>(0, (prev, next) => prev + next);

  print('===========');
  print(sum2);

  List<String> words = [
    '안녕하세요.',
    '저는 ',
    '훈이 입니다',
  ];

  final sentence = words.fold<String>('', (prev, next) => prev + next);
  final sentenceLength = words.fold(0, (prev, next) => prev + next.length);
  //문자열 길이 구하는 거니까 처음에 0 넣어주고 next에만 .length 붙여주면 된다.

  print(sentence);
  print(sentenceLength);
}
