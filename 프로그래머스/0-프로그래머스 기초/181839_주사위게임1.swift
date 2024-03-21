//
//  [ 프로그래머스 ] 181839 - 주사위 게임1
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181839
//

import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    if a%2 == 1 && b%2 == 1 {
        return a*a + b*b
    }else if a%2 == 1 || b%2 == 1 {
        return 2 * (a + b)
    }else {
        return a > b ? a-b : b-a
    }
}
