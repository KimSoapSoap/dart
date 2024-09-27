class User {
  int id;
  String username;
  String password;

  User(this.id, this.username, this.password);

  //Dart는 함수의 오버로딩이 안 되기 때문에 생성자 오버로딩도 안 된다.
  //Named Constructor 라는 개념이 있다. 이름이 있는 생성자
  //A클래스에서 A() 라는 생성자 말고 추가로 A.a(), A.b() 이런식으로 만들어 준다.   생성자에 a, b라는 이름이 있다.
  User.hello(
      {required this.id, required this.username, required this.password});

  //Map을 받아서 Object로 만들어 줄 것이기 때문에 초기화 리스트를 사용한다.
  User.fromJson(Map<String, dynamic> json)
      : this.id = json["id"],
        this.username = json["username"],
        this.password = json["password"];

  //통신에서 Json 요청을 하면 java에서는 DTO를 받아서 만들어야 하는데 Dart는 Map타입으로 받으면 바로 받아진다. 받아서 옮긴다. (깊은 복사)
}

void main() {
  User u1 = User(1, "ssar", "1234");
  User u2 = User.hello(id: 1, username: "ssar", password: "1234");
  User u3 = User.fromJson({"id": 1, "username": "ssar", "password": "1234"});

  print(u1);
  print(u2);
  print(u3);
}
