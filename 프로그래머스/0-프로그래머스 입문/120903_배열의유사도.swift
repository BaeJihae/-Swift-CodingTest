//
//  [ 프로그래머스 ] 120903 - 배열의 유사도
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120903
//

import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    if s1.count <= s2.count {
        return s1.filter{ s2.contains($0) }.count
    }else {
        return s2.filter{ s1.contains($0) }.count
    }
}

print(solution(["a", "c", "b"], ["com", "b", "d", "p", "c"]))
