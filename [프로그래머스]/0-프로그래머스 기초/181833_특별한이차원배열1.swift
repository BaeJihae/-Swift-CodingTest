//
//  [ 프로그래머스 ] 181833 - 특별한 이차원 배열1
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181833
//

import Foundation

func solution(_ n:Int) -> [[Int]] {
    return (1...n).map{ i in (1...n).map{ j in i == j ? 1 : 0 }}
}
