//반복문

void main() {
  var chobab = ["새우초밥", "광어초밥", "연어초밥"];

/*
  // chobab[0] = chobab[0]+"_간장";
  // chobab[1] = chobab[1]+"_간장";
  // chobab[2] = chobab[2]+"_간장";

  //반복문
  // A.length는 A의 길이를 나타냄
  for (var i = 0; i < chobab.length; i++) {
    chobab[i] = chobab[i] + "_간장";
  }
*/

//Stream

//iterator 자료형.
//순차적으로 접근한다.(모든 원소를 하나씩 순회하며 동작)

//map()
//map() 함수는 리스트의 각 요소를 순회하면서 주어진 함수가 적용된 결과를 원소(요소)로 가지는 새로운 리스트나 다른 Iterable을 생성하는 함수이다.
//리스트의 요소가 객체일 경우 map()함수는 참조값이 가리키는 객체에 대해서 함수의 로직을 실행하는데

//변환하는 부분이 없다면 순회해서 참조값을 그대로 가지고 오기 때문에 새로운 리스트를 반환해도 원본 리스트의 참조값들이기 때문에(바꾸면 원본도 바뀜) 얕은 복사가 된다.
//변환 없이 기존 데이터를 사용해 새로운 객체를 만드는 것이면 새로운 리스트는 원본과는 별개의 객체들을 요소로 가지기 때문에 원본 리스트와는 독립적인 깊은 복사가 된다.
//변환을 가하고 새로운 객체를 만드는 것이면 변환이 된다.(이때 새로운 객체를 만들지 않으면 원본을 수정한, 바꾸면 원본도 바뀌는 리스트가 반환됨)
//필요에 따라서 적절히 활용하면 된다.

//참고로 기본값은 복사해서 가져오기 때문에 상관없고 String은 자체적으로 불변객체로 설계돼있기 때문에 그냥 변환해서 가져와도 원본은 그대로다.

// 얕은 복사: 객체의 참조만 복사되어 복사본과 원본이 같은 데이터를 공유함.
// 깊은 복사: 객체의 모든 데이터가 복사되어 복사본과 원본이 독립적임.
// 변환: 원본 데이터는 수정되지 않으며, 새로운 값을 반환. 객체의 경우 새로운 객체를 생성하여 반환해야 함.

// 얕은 복사 (Shallow Copy)
// 얕은 복사는 리스트나 객체의 참조만 복사하고, 내부에 있는 참조형 데이터는 같은 참조를 가리키기 때문에 복사본에서 내부 데이터를 수정하면 원본도 영향을 받을 수 있습니다. 이는 중첩된 객체나 복잡한 데이터 구조에서 특히 주의해야 합니다.
// 원본과 복사본이 내부 데이터를 공유하기 때문에(같은 참조값), 한쪽에서 수정이 이루어지면 다른 쪽에도 영향을 미칩니다.

// 깊은 복사(Deep Copy)
// 깊은 복사는 리스트나 객체의 내부에 있는 모든 참조형 데이터까지 완전히 새로 복사하는 것을 의미합니다.
// 객체의 필드값을 이용해 새로운 객체를 생성하거나, copy 메서드를 구현하여 필드 값을 복사함으로써, 원본과 복사본이 완전히 독립적인 객체가 됩니다. 이 때문에 복사본에서 내부 데이터를 수정해도 원본은 영향을 받지 않습니다.
// 깊은 복사는 원본과 복사본이 완전히 독립적이므로(별개의 참조값), 한쪽에서의 수정이 다른 쪽에 전혀 영향을 미치지 않습니다.
// 즉, 독립적으로 만들려면 원본의 데이터를 활용해서 새로운 객체를 new 해서 만들면서 가져와야 완전히 독립적이게 된다.

// 변환 (Transformation)
// 변환은 리스트의 각 요소에 대해 함수를 적용해 새로운 값을 반환하는 과정입니다. 이때 원본 데이터는 수정되지 않고, 변환된 값들로 새로운 리스트가 만들어집니다.
// 변환 과정에서 객체를 다룰 때는 새로운 객체를 생성해야 합니다. 만약 기존 객체를 직접 수정하면, 원본 객체에도 영향을 미쳐 얕은 복사처럼 작동할 수 있습니다. 따라서, 변환에서 새로운 객체를 반환하는 것이 중요합니다.

// 한 줄로 표현하려면 람다를 사용한다. 그 외에는 익명 함수를 사용해야 한다.
// e는 순회하면서 각각의 원소를 나타낸다
// .toList()는 List타입으로 변경 가능

//람다 사용
//모든 원소를 순회하면서
  var changeChobab = chobab.map((e) => e + "_간장").toList();

//익명 함수 사용
  var changeChobab2 = chobab.map((e) {
    if (e == "새우초밥") {
      return e;
    } else {
      return e + "_간장";
    }
  }).toList();

  //원래 객체는 이렇게 하면 원본이 변하지만 객체를 불변이라서 자체적으로 새로운 값을 만들어 주기 때문에 진정한 변환이 이루어졌다.

  print(changeChobab);
  print(changeChobab2);
  print(chobab);
}
