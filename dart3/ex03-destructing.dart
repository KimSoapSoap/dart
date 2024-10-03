// Destructuring
// 값을 받아올 때 분해한 상태로 받아 오는 것


// Pattern Matching

void main() {
/*  
  //레코드뿐만 아니라 List타입이라든지 클래스 타입이라든지 다른 타입도 값을 받아와서
  //필요하면 값을 꺼내서 어떤 변수에 저장해서 사용해야 한다.
  //이런식으로 값을 받아서 또다시 꺼내서 어떤 변수에 저장해서 사용하는 것이 아닌
  //그냥 받아올 때 분해해서 받으면서 바로 변수에 넣어주자는 것이 Destructuring이다.  
  final minJi = ('민지', 20);
  final name = minJi.$1; // 혹은 print(minJi.$1);
  final age = minJi.$2;  // 혹은 print(minJi.$2);
  
*/
  //Destructuring
  //이렇게 하면 1:1로 매칭이 된다.
  final (name, age) = ('민지', 20);
  //아래와 같이 타입 명시도 가능
  //final (String name, int age) = ('민지', 20);

  print(name);
  print(age);

  final newJeans = ['민지', '해린'];

  final [a, b] = newJeans;
  //아래와 같이 타입 명시도 가능
  //final [String a, String b] = newJeans;

  print(a);
  print(b);

  final numbers = [1, 2, 3, 4, 5, 6, 7, 8];

  //위에 값들 중에서 일부 값만 가져오고 싶다면?
  // 1,2와 8을 가져오고 싶다면 rest키워드 (...)를 사용. 중간을 건너 뛴다는 것이고 list 내에서 한 번만 사용할 수 있다.
  // 이를 rest 매칭이락 ㅗ한다.
  final [x, y, ..., z] = numbers;

  print(x);
  print(y);
  print(z);

  //만약 건너 뛴 ... 부분, 즉 rest 부분을 가져 오고 싶다면?
  //rest키워드(...) 뒤에 이름을 아무거나 붙여주면 된다.
  //그럼 이 ...은 list로 리턴하게 된다.
  final [xx, yy, ...rest, zz] = numbers;

  print(xx);
  print(yy);
  print(zz);
  print(rest);

  //ignore 하는 기능도 있다.
  //언더스코어 (_)를 넣어주면 된다. 이렇게 언더스코어로 무시한 녀석들은 무시된 게 아니라 삭제돼서 ...처럼 다시 들고올 수 없다.
  //즉 xxx는 1, 2는 언더스코어로 삭제되고 yyy는 3이 나온다.
  final [xxx, _, yyy, ...rest2, zzz, _] = numbers;

  print(xxx);
  print(yyy);
  print(zzz);
  print(rest2);

  final minJiMap = {'name': '민지', 'age': 19};
  //name 키값을 name3라 부르기로 하고  age 키값을 age3라고 부르기로 한 것
  final {'name': name3, 'age': age3} = minJiMap;

print('-------minjiMap-----------')
  print(name3);
  print(age3);

  //아래 만든 Idol 클래스 예시
  //객체 생성
  final minJiidol = Idol(name: '민지', age: 19);

  //생성된 객체의 필드값을 따로 꺼내서 변수에 저장하지 않고 Destructing을 사용해서
  //name을 name4에,  age를 age4에 한 번에 매칭시키면서 넣는다.
  final Idol(name: name4, age: age4) = minJiidol;

  print('-------minji클래스-----------')
  print(name4);
  print(age4);
}

//클래스 예시

class Idol {
  final String name;
  final int age;

  Idol({required this.name, required this.age});
}
