import UIKit

// final: 상속이 불가능 하도록 한다.
final class Friend {
    
    var name : String
    
    init(name: String){
        self.name = name
    }
}

class BestFriend : Friend {
    
    override init(name: String){
        super.init(name: "베프 " + name)
    }
}

let myFriend = Friend(name: "쩡대리")
let myBestFriend = BestFriend(name: "철수")
