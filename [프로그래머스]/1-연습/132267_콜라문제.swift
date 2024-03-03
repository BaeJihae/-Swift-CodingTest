//
// [프로그래머스] 132267 - 콜라문제
//
// https://school.programmers.co.kr/learn/courses/30/lessons/132267
//
import Foundation

// 나의 풀이
func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var n: Int = n
    var answer: Int = 0
    while n >= a {
        answer = answer + ( n / a * b )
        n = n / a * b + n % a
    }
    return answer
}
