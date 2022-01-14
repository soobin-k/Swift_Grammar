import UIKit

var myArray = [3, 4, 88, 99, 5, 6, 7 , 8, 10, 20, 100]

//오름차순
var ascendingArray = myArray.sorted() //sorted: 반환만, 기존 배열 변화 없음

myArray.sort() //sort: 배열 자체를 정렬

//내림차순
var descendingArray = myArray.sorted(by: >)

myArray.sort(by: >)
