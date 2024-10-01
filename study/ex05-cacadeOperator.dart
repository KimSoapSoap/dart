void main() {
  List<int> even = [
    2,
    4,
    6,
    8,
  ];

  List<int> odd = [
    1,
    3,
    5,
    7,
  ];

  //cascading operator -> 배열에서 ...을 붙여 특정 리스트를 복사해서 (특정 리스트의 원소들을 추가해준다.)
  // ...로 붙이는 배열의 요소가 객체라면 얕은 복사일 것이다.

  print(even);
  print(odd);
  print([...even, ...odd]);
  print(even == [...even]);
}
