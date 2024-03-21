//
//  [ 프로그래머스 ] 12931 - 자릿수 더하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/12931
//
func solution(_ n:Int) -> Int { String(n).map{ Int(String($0))! }.reduce(0,+) }
