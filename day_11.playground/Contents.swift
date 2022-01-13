import UIKit

//MARK: 1. 반환형이 없음. 이벤트만 알려줌
// () -> Void
//func completion(){
//
//}


// completion 이라는 클로저를 매개변수로 가지는
// 메소드 정의
func sayHi(completion: () -> Void){
    print("sayHi() called")
    sleep(2) // 2초 잠깐 멈추기
    // completion 클로저 실행
    completion()
}

// 메소드 호출부 에서 이벤트 종료를 알 수 있다.

sayHi(completion: {
    print("2초가 지났다. 1")
})

sayHi(){
    print("2초가 지났다. 2")
}

sayHi{
    print("2초가 지났다. 3")
}

//MARK: 2. 매개변수가 있고 반환형은 없음
// (String) -> Void
//func completion(userInput: String){
//
//}

// 매개변수로서 데이터를 반환하는 클로저
func sayHiWithName(completion: (String) -> Void){
    print("sayHiWithName() called")
    sleep(2)
    // 클로저를 실행과 동시에 데이터를 반환
    completion("오늘도 빡코딩 하고 계신가요?!")
}


sayHiWithName(completion: { (comment: String) in
    print("2초 뒤에 그가 말했다! comment: ", comment)
})

sayHiWithName(completion: { comment in
    print("2초 뒤에 그가 말했다! comment: ", comment)
})

sayHiWithName{ comment in
    print("2초 뒤에 그가 말했다! comment: ", comment)
}

sayHiWithName{
    print("2초 뒤에 그가 말했다! comment: ", $0)
}

//MARK: 2.2 매개변수가 여러개 있고 반환형은 없음
// (String, String) -> Void
//func completion(first: String, second: String){
//
//}
// 매개변수로서 데이터를 여러개 반환하는 클로저
func sayHiWithFullName(completion: (String, String) -> Void){
    print("sayHiWithFullName() called")
    sleep(2)
    // 클로저를 실행과 동시에 데이터를 반환
    completion("빡코딩", "초비")
}

sayHiWithFullName { first, second in
    print("첫번째: \(first), 두번째: \(second)")
}

sayHiWithFullName { _, second in // 생략 가능(첫번째꺼 안쓸꺼면 _로 생략 가능)
    print("두번째: \(second)")
}

sayHiWithFullName{
    print("첫번째: \($0), 두번째: \($1)") // 매개변수 순서 : 0, 1, 2, 3..
}

// ㅊ클로저 자체를 옵셔널로 지정 가능
func sayHiOptional(completion: (() -> Void)? = nil){
    print("sayHiOptional() called")
    sleep(2) // 2초 잠깐 멈추기
    // completion 클로저 실행
    completion?()
}

sayHiOptional {

}

sayHiOptional() // 1. 이벤트 안받고 싶을 때

sayHiOptional(completion: { // 2. 이벤트 받고 싶을 때
    print("2초가 지났다.!!")
})

//MARK: 3. 매개변수가 있고 반환형도 있음 ex) max, map, min 등등 연산자
// (Int) -> String
//func transform(number: Int) -> String {
//    return "숫자 : \(number)"
//}

var myNumbers : [Int] = [0, 1, 2, 3, 4, 5]

//var transformedNumbers = myNumbers.map { aNumber in
//    return "숫자: \(aNumber)"
//}
//var transformedNumbers = myNumbers.map { (aNumber: Int) -> String in
//    return "숫자: \(aNumber)"
//}
//var transformedNumbers = myNumbers.map { (aNumber: Int) -> String in
//    return "숫자: \(aNumber)"
//}
//완전히 줄이면
var transformedNumbers = myNumbers.map {
    return "숫자: \($0)"
}

//var transformedNumbers11 = myNumbers.map
