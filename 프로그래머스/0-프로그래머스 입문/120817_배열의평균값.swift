//
//  [ 프로그래머스 ] 120817 - 배열의 평균값
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120817
//
import Foundation

func solution(_ numbers:[Int]) -> Double { numbers.reduce(0.0) { $0 + Double($1)} / Double(numbers.count) }
