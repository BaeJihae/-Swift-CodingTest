//
//  [ 프로그래머스 ] 181930 - 주사위 게임 2
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181930
//

import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    if a == b && b == c && c == a {
        return (a+b+c)*(a*a+b*b+c*c)*(a*a*a+b*b*b+c*c*c)
    }else if a == b || b == c || c == a {
        return (a+b+c)*(a*a+b*b+c*c)
    }else {
        return a + b + c
    }
}
