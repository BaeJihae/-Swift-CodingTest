//
//  [ 프로그래머스 ] 181855 - 문자열 묶기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181855
//
import Foundation

//func solution(_ strArr:[String]) -> Int {
//    var array: [Int] = []
//    var answer: [Int] = []
//    for i in strArr{
//        if array == [] || !array.contains(i.count){
//            answer.append(max(strArr, i.count))
//            array.append(i.count)
//        }
//    }
//    return answer.max()!
//}
//func max(_ strArr:[String], _ n: Int) -> Int {
//    return strArr.map{ $0.count == n ? 1 : 0 }.reduce(0, +)
//}

func solution(_ strArr:[String]) -> Int {
    var arr = Array(repeating: 0, count: 31)
    strArr.forEach { arr[$0.count] += 1 }
    return arr.max()!
}
