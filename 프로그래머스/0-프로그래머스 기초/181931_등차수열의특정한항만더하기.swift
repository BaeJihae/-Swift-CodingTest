//
//  [ 프로그래머스 ] 181931 - 등차수열의 특정한 항만 더하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181931
//

import Foundation

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    return included.enumerated().filter{ $0.element == true }.map{ a + $0.offset * d }.reduce(a, +)
}
