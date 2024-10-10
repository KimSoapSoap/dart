String json = '{"id": 1, "title":"제목1"}';
Map<String, dynamic> map = {
  "id": 1,
  "title": "제목1",
};

//그냥 이렇게 맵으로만 받으면 아래 main에서 처럼 꺼낼 때 오타가 날 수도 있다.
//맵을 받는 오브젝트(Post)를 하나 만들어서 받은 맵에서 오브젝트로 넣어줘서 깊은 복사 해서 사용.
//오타가 날시 에러 표시도 해준다.
//지금은 Post만 만들어놨지만 결국 map을 받아서 꺼내서 넣어주고 있다. 좀 더 편하게 하려면? -> ex04.dart
class Post {
  int id;
  String title;

  Post(this.id, this.title);
}

//모든 통신의 기본은 본인 오브젝트로 바꿔줘야 한다.

void main() {
  print(map["id"]);

  Post post = Post(map['id'], map['title']);
  print(post.id);
  print(post.title);
}
