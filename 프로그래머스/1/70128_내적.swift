//
// [프로그래머스] 70128 - 내적
//
// https://school.programmers.co.kr/learn/courses/30/lessons/70128
//

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    return zip(a, b).map{ $0 * $1 }.reduce(0, +)
}
