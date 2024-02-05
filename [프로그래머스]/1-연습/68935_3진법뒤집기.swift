//
// [프로그래머스] 68935 - 3진법뒤집기
//
// https://school.programmers.co.kr/learn/courses/30/lessons/68935
//

import Foundation

// 나의 풀이
func solution(_ n:Int) -> Int {
    var n = n
    var ternary = ""
    var answer = 0
    while n != 0 {
        ternary += "\(n % 3)"
        n = n/3
    }
    for (i,a) in ternary.reversed().enumerated() {
        answer += Int(String(a))! * Int(pow(3.0,Double(i)))
    }
    return answer
}

// 다른 사람 풀이
func solution2(_ n:Int) -> Int {
    let flipToThree = String(n, radix: 3)
    let answer = Int(String(flipToThree.reversed()),radix:3)!
    return answer
}
