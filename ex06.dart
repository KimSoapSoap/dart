//엄마가 오셨을 때 취할 행동 정하기
void whenComeMother(Function beh) {
  //리턴값이 없으므로 한 번 쓰고 마는 함수를 받아서 사용
  beh();
}

void main() {
  // 재활용 안 하고 한 번 호출하고 끝낼 것이기 때문에 익명 함수 사용
  whenComeMother(() {
    print("컴퓨터끄기");
  });
}
