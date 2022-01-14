import UIKit

// 1. 클래스의 경우
class Friend {
    var name : String
    
    func changeName(newName: String){
        self.name = newName
    }
    init(_ name: String){
        self.name = name
    }
}

var myFriend = Friend("김수빈")

myFriend.changeName(newName: "개발하는 김수빈")

myFriend.name

// 2. 스트럭트의 경우
// 맴버 변수 name을 가지는 스트럭트
// struct 는 참조(메모리 주소)인 클래스와 다르기 때문에
// (클래스 vs 스트럭트 참조)
// struct 구조의 맴버 변수 값을 변경(mutate) 하기 위해서는
// mutating 키워드가 필요
// #짤막상식 mut - 라틴어 change
struct BestFriend {
    
    var name : String
    
    mutating func changeName(newName: String){
        self.name = newName
        print("newName: ", newName)
    }
    
//    init(_ name: String){
//        self.name = name
//    }
}
var myBestFriend = BestFriend(name: "김수빈")

myBestFriend.changeName(newName: "초비")

// 결론 mutating은 struct에서 멤버변수 값 변경 키워드이다.
