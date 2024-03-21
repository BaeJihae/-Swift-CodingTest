//
// [프로그래머스] 12940 - 최대공약수와 최소공배수
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12940
//

import Foundation

// 나의 풀이
func solution(_ n:Int, _ m:Int) -> [Int] {
 
    // 최대공약수 구하기
    func euclidean(_ n: Int, _ m: Int) -> Int {
        let x = max(n, m)
        let y = min(n, m)
        if x == y {
            return x
        }else if x % y == 0{
            return y
        }else {
            return euclidean( x%y, y)
        }
    }
    let g = euclidean(n,m)
    return [g, n*m/g]
}

// 다른 사람 풀이
func solution2(_ n:Int, _ m:Int) -> [Int] {
    let g = gcd(n,m)
    return [g, n * m / g]
}

func gcd(_ n:Int,_ m: Int)->Int {
    return n%m == 0 ? m : gcd(m, n%m)
}
