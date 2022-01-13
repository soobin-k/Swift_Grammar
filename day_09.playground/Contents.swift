import UIKit


// 제네릭 - 어떤 자료형이든 받는다
struct MyArray<T>{
    
    // 제네릭을 담은 빈 배열
    var elements : [T] = [T]()
    
    // 생성자
    init(_ elements: [T]){
        self.elements = elements
    }
    
}

struct Friend {
    var name: String
}

var mySomeArray = MyArray([1,2,3]) // Int 형
print("mySomeArray : \(mySomeArray)")

var myStringArray = MyArray(["가","나","다"]) // String 형
print("myStringArray : \(myStringArray)")

let friend_01 = Friend(name: "철수")
let friend_02 = Friend(name: "영희")
let friend_03 = Friend(name: "수잔")

var myFriendsArray = MyArray([friend_01,friend_02,friend_03]) // Friend 형
print("myFriendsArray : \(myFriendsArray)")
