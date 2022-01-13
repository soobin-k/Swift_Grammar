import UIKit

// String을 반환하는 클로저
let myName : String = {
    // myName 으로 들어간다
    return "김수빈"
}()

print(myName)

// 클로저 정의(매개변수 받아서 반환하는 경우)
let myRealName : (String) -> String = { (name: String) -> String in
    return "개발하는 \(name)"
}

myRealName("초비")

// 클로저 정의(반환값 업는 경우)
let myRealNameLogic : (String) -> Void = { (name: String) in
    print("개발하는 \(name)")
}

myRealNameLogic("초비초비")
