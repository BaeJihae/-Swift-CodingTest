//
//  [ 프로그래머스 ] 181912 - 배열만들기5
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181912
//

import Foundation

func solution(_ intStrs:[String], _ k:Int, _ s:Int, _ l:Int) -> [Int] {
    var answer:[Int] = []
    for i in intStrs {
        var n = Int(i.map{ String($0) }[s...s+l-1].joined())!
        n > k ? answer.append(n) : nil
    }
    return answer
}

print( solution(["0123456789","9876543210","9999999999999"], 50000, 5, 5))


//func solution(_ intStrs: [String], _ k: Int, _ s: Int, _ l: Int) -> [Int] {
//    return intStrs.map { Int($0.prefix(s + l).suffix(l))! }.filter { $0 > k }
//}
