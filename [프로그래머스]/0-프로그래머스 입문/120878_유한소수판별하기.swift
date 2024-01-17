//
//  [ 프로그래머스 ] 120878 - 유한소수판별하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120878
//
import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var a = a
    var b = b

    // 기약분수 만들기
    var n = 1
    while n < max(a,b) {
        n += 1
        if a % n == 0 && b % n == 0 {
            a = a/n
            b = b/n
            n = 1
        }
    }

    // 유한 소수 판별하기
    while true {
        if b == 1 {
            return 1
        }else if b % 2 == 0 {
            b = b / 2
        }else if b % 5 == 0 {
            b = b / 5
        }else {
            return 2
        }
    }
}
