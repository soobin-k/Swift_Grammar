import UIKit

class Friend {
    
    var name : String
    
    init(_ name: String){
        self.name = name
    }
    
    func sayHi(){
        print("안녕?! 난 \(self.name) 라고 해")
    }
}

class BestFriend : Friend {
    
    // override로 부모의 메소드를 가져왔다.
    // Friend가 가지고 있는 init을 무조건 오버라이드 해줘야함.
    override init(_ name: String) {
        // super 로 부모의 메소드 사용
        super.init("베프 " + name) //name이 변경됨
    }
    
    override func sayHi() {
        super.sayHi()
    }
    
    func sayGoodBye(){
        print("sayGoodBye() called")
    }
    
}

let myFriend = Friend("김수빈")

myFriend.sayHi()

let myBestFriend = BestFriend("영희")

myBestFriend.sayHi()

myBestFriend.name

myBestFriend.sayGoodBye()
