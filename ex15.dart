//Map

//Key, value값으로 된 map에서 value값은 뭐가 들어올지 모르므로 dynamic(오브젝트 타입)
Map<String, dynamic> session = {"id": 1, "username": "ssar"};

void main() {
  //Map
  //외부에서 key, value를 추가하는 문법
  session["model"] = "cos";

  //key값을 통한 value 확인
  print(session["id"]);
  print(session["username"]);
  print(session["model"]);

  //key값을 통한 value 제거
  session.remove("id");
  print(session["id"]);

  print(session);
}
