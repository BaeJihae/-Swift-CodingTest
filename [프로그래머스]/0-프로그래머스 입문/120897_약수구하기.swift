//
//  [ 프로그래머스 ] 120897 - 약수 구하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120897
//

import Foundation

func solution(_ n:Int) -> [Int] {
    return (1...n).filter{ n % $0 == 0}
}

print(solution(24))
