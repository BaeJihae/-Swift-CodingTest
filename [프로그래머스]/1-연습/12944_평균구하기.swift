//
//  [ 프로그래머스 ] 12944 - 평균 구하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/12944
//
func solution(_ arr:[Int]) -> Double { Double(arr.reduce(0, +)) / Double(arr.count) }
