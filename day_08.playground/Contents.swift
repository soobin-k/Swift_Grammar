import UIKit


// 함수, 메소드 정의
func myFunction(name: String) -> String{
    return "안녕하세요?! \(name) 입니다!"
}

// 함수, 메소드를 호출한다. call
myFunction(name: "김수빈")


// 함수, 메소드 정의(파라미터 변경)
func myFunctionSecond(with name: String) -> String{
    return "안녕하세요?! \(name) 입니다!"
}

myFunctionSecond(with: "초비")


// 함수, 메소드 정의(파라미터 생략)
func myFunctionThird(_ name: String) -> String{
    return "안녕하세요?! \(name) 입니다!"
}

myFunctionThird("김초비")
