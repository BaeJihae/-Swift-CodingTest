//
//  [ 프로그래머스 ] 120852 - 소인수분해
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120852
//

import Foundation

func solution(_ n:Int) -> [Int] {
    return (2...n).filter{ a in n % a == 0 && (1...a).filter{ a % $0 == 0 }.count == 2 }
}
print(solution(12))


