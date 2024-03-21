//
//  [ 프로그래머스 ] 120871 - 저주의 숫자3
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120871
//

import Foundation

func solution(_ n:Int) -> Int {
    var answer = 1
    for i in 1..<n {
        answer += 1
        while String(answer).contains("3") || answer % 3 == 0 {
            answer += 1
        }
    }
    return answer
}

print(solution(40))
