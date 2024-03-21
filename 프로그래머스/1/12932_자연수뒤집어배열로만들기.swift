//
//  [ 프로그래머스 ] 12932 - 자연수 뒤집어 배열로 만들기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/12932
//
func solution(_ n:Int64) -> [Int] { String(n).reversed().map{ Int(String($0) )! }}
