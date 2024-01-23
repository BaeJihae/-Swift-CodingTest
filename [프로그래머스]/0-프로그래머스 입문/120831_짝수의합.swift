//
//  [ 프로그래머스 ] 120831 - 짝수의 합
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120831
//
import Foundation

func solution(_ n:Int) -> Int { stride(from: 0, through: n, by: 2).reduce(0, +) }
