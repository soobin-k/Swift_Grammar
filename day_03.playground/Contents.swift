import UIKit

// 학교 - 초, 중, 고
enum School {
//    case elementary
//    case middle
//    case high
    case elementary, middle, high //값이 없는 상태
}

let yourSchool = School.high
//print("yourSchool: \(yourSchool)")
print("yourSchool: ", yourSchool)

enum Grade : Int { //자료형 선언
    case first = 1 //값을 줄 수 있음
    case second = 2
}

let yourGrade = Grade.second.rawValue //실제 값 가져오기
print("yourGrade : \(yourGrade)")

//다른 방식
enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
    
    func getName() -> String { //값 반환 함수 정의
        switch self {
        case .elementary(let name):
            return name
        case let .middle(name):
            return name
        case .high(let name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "정대리중학교") //값을 지정해줄 수 있음

print("yourMiddleSchoolName: \(yourMiddleSchoolName)")
print("yourMiddleSchoolName: \(yourMiddleSchoolName.getName())") //값만 부르고 싶을 때
