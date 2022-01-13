import UIKit

// 클랙스: 빵틀, 객체: 빵 -> 메모리에 올려짐(주소값)

class MyFriend {
    
    var name : String
    
    // 메모리 할당
    init(_ name: String = "이름없음"){
        self.name = name
        print("init() MyFriend 가 메모리에 올라갔다. - ", self.name)
    }
    
    // 메모리 할당 해제
    deinit{
        print("deinit() 메모리에서 사라짐 - ", self.name)
    }
    
    // deinit 검증을 위해 작성
    var calledTimes = 0
    let MAX_TIMES = 5
    
    static var instancesOfSelf = [MyFriend]()
    
    class func destorySelf(object: MyFriend){
        instancesOfSelf = instancesOfSelf.filter{ (aFriend : MyFriend) in // 매개변수를 받는 클로저
            aFriend !== object
        }
    }
    
    func call(){
        calledTimes += 1
        print("called \(calledTimes)")
        if calledTimes > MAX_TIMES {
            MyFriend.destorySelf(object: self)
        }
    }
    
}

//메모리에 올라감
var myFriend = MyFriend("김수빈")
let aFriend = MyFriend()

// Unmanaged.passUnretained(객체).toOpaque()
// 로 해당 객체의 메모리 주소를 프린트 할 수 있습니다.
let anObjectMemoryAddress = Unmanaged.passUnretained(aFriend).toOpaque()

let secondMemorryAddress = Unmanaged.passUnretained(myFriend).toOpaque()

print(anObjectMemoryAddress)

print(secondMemorryAddress)


weak var aFriendToBeDestoried = MyFriend("개발하는 김수빈")
//weak 이면 deinit이 호출됨

if aFriendToBeDestoried != nil {
    aFriendToBeDestoried!.call()
} else {
    print("객체가 더 이상 메모리에 없습니다.")
}
