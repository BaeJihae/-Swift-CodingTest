//
//  [ 프로그래머스 ] 120837 - 개미 군단
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120837
//

import Foundation

func solution(_ hp:Int) -> Int {
    return hp / 5 + ( hp % 5 ) / 3  + (hp%5)%3
}
