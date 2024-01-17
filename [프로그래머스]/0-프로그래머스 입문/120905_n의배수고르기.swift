//
//  [ 프로그래머스 ] 120905 - n의 배수 고르기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120905
//
func solution(_ n:Int, _ numlist:[Int]) -> [Int] { numlist.filter { $0 % n == 0 } }
