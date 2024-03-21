//
//  [ 프로그래머스 ] 12934- 정수 제곱근 판별
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/12934
//

import Foundation

func solution(_ n:Int64) -> Int64 {
    return Int(sqrt(Double(n))) * Int(sqrt(Double(n))) == n ? Int64(pow(sqrt(Double(n)) + 1.0, 2)) : -1
}
