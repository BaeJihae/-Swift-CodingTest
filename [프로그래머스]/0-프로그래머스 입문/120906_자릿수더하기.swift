//
//  [ 프로그래머스 ] 120906 - 자릿수 더하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120906
//
import Foundation

func solution(_ n:Int) -> Int {
    return String(n).map{ Int(String($0))! }.reduce(0,+)
}
