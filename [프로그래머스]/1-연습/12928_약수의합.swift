//
//  [ 프로그래머스 ] 12928 - 약수의 합
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/12928
//
func solution(_ n:Int) -> Int { n == 0 ? 0 : (1...n).filter{ n % $0 == 0 }.reduce(0, +) }
