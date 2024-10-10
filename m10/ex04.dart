String json = '{"id": 1, "title":"제목1"}';
Map<String, dynamic> map = {
  "id": 1,
  "title": "제목1",
};

//Post의 생성자에서 map을 받아서 그 값을 꺼내서 객체를 생성하는 fromMap(map)생성자를 만들었다.
//이러면 Post의 fromMap()생성자에 map을 그냥 전달하기만 하면 바로 객체가 만들어진다. 일일이 직접 꺼낼 필요가 없다.

class Post {
  int id;
  String title;

  Post.fromMap(map)
      : this.id = map['id'],
        this.title = map['title'];
}

//모든 통신의 기본은 본인 오브젝트로 바꿔줘야 한다.
void main() {
  Post post = Post.fromMap(map);
  print(post.id);
  print(post.title);
}
