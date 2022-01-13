import UIKit

// 데이터 모델을 담는 두가지 방식

// 유튜버 (데이터) 모델 - struct / 구조체
struct YoutuberStruct {
    var name : String
    var subscribersCount : Int
}

var subin = YoutuberStruct(name: "김수빈", subscribersCount: 99999)

var subinClone = subin

print("======== struct =========")

print("값 넣기 전 devJeongClone.name : \(subinClone.name)")

subinClone.name = "초비"

// 값 복사이기 때문에 둘의 값이 다르다
print("값 넣은 후 devJeongClone.name : \(subinClone.name)")
print("값 넣은 후 devJeong.name : \(subin.name)")

print("======== class =========")

// 클래스
class YoutuberClass {
    var name : String
    var subscribersCount : Int
    // 생성자 - 즉 메모리에 올린다
    // init 으로 매개변수를 가진 생성자 메소드를 만들어야
    // 매개변수를 넣어서 그값을 가진 객체(object)를 만들수 있다.
    init(name: String, subscribersCount: Int){
        self.name = name
        self.subscribersCount = subscribersCount
    }
}

var soobin = YoutuberClass(name: "김수빈", subscribersCount: 99999)

var soobinClone = soobin

print("값 넣기 전 jeongDaeRiClone.name : \(soobinClone.name)")

soobinClone.name = "초비"
// 값 복사해도 연결이 되어있음, 메모리 주소를 가르킴(참조)
print("값 넣은 후 jeongDaeRiClone.name : \(soobinClone.name)")

print("값 넣은 후 jeongDaeRi.name : \(soobin.name)")

//결론
//struct : 복사해서 사용하는 개념. 참조하는 값이 바뀌어도 기존 값에는 영향이 없음!
//class : 공유해서 사용하는 개념. 참조하는 값이 바뀌면 기존 값도 바뀜!
