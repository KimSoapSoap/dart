//지금까지 배운 타입들

int n1 = 1;
double n2 = 1.0;
bool n3 = true;

//Dart는 String 타입을 큰따옴표("") 혹은 홑따옴표('')로 표현할 수 있다.
//홑따옴표로 감싸면 큰따옴표를 그냥 표현할 수 있다.
String n4 = '"f", "1" ${n1}'; // ''; 가능
var n5 = 1; // 타입추론
dynamic n6 = "값"; //오브젝트 타입

var n7 = null; // null 값 가능
var n8 = null; // null 값 가능

int? n9 = null; // null 들어가려면 물음표 타입

class Dog {} // 클래스 타입

Dog d = Dog();
Dog? d2 = null;

Function? f = null;
Function f2 = () => 1; //함수타입 변수에 람다 담기
Function f3 = () {}; //함수타입 변수에 익명함수 넣기
var F4 = () {}; //var 변수에 익명함수 넣기

// final 붙이면 타입을 생략할 수 있다. 타입추론을 한다.(var로 타입 추론을 한다고 한다)
final count = 1;

// 매개변수에서는 타입을 생략하면 dynamic으로 타입추론을 한다.
// 함수의 리턴 타입을 생략하면 dynamic이 리턴 타입이 된다.
// 지역변수에서는 타입을 생략하면 var로 타입추론을 한다.

void main() {}
