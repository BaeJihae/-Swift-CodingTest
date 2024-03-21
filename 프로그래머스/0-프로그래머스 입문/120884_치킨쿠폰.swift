//
//  [ 프로그래머스 ] 120884 - 치킨 쿠폰
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120884
//
import Foundation

func solution(_ chicken:Int) -> Int {
    var chicken = chicken
    var answer = 0
    while chicken >= 10 {
        answer += chicken/10
        chicken = chicken/10 + chicken%10
    }
    return answer
}
