//
//  [ 프로그래머스 ] 120836 - 순서쌍의 개수
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120836
//

import Foundation

func solution(_ n:Int) -> Int {
    return (1...n).filter{ n % $0 == 0 }.count
}
