//
//  [ 프로그래머스 ] 120848 - 팩토리얼
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120848
//

import Foundation

func solution(_ n:Int) -> Int {
    var n = n

    for i in (1...10) {
        n = n / i
        print(n, i)
        if n == 1 {
            return i
        }else if n < 1 {
            return i-1
        }
    }
    return 0
}
print(solution(100))
