//
// [프로그래머스] 86501 - 없는 숫자 더하기
//
// https://school.programmers.co.kr/learn/courses/30/lessons/86051
//

import Foundation

func solution(_ numbers:[Int]) -> Int {
    let a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    return a.filter{!numbers.contains($0)}.reduce(0, +)
}
