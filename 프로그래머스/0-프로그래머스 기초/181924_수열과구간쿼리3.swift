//
//  [ 프로그래머스 ] 181924 - 수열과 구간 쿼리3
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181924
//

import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var a = arr
    queries.forEach{ a.swapAt($0[0], $0[1]) }
    return a
}
