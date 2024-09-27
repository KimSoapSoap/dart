//List, Map, Set
//자료구조

//List
//List는 요소의 중복이 가능하다.

//리스트의 초기화
List<int> nums1 = [];

//값을 넣어주려면 그냥 넣으면서 생성하면 된다
List<int> nums2 = [1, 2, 3, 4];

//보통은 타입추론으로 생성한다.
var list = [1, 2, 3, 4];

//final이 붙으면 arr의 참조값이 바뀌지 않을 뿐이지 내부의 요소는 바꿀 수 있다.
final arr = [1, 2, 3, 4];

void main() {
  //List
  print(arr[0]);

  // List 초기화
  var nums = [10, 20, 30, 40];

  // 값 추가
  nums.add(50);

  // 값 삭제
  nums.removeAt(0); // 첫 번째 요소 삭제

  // 리스트 순회
  for (var num in nums) {
    print(num); // 각 요소 출력
  }
}
