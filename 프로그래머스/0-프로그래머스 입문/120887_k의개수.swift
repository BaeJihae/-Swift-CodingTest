//
//  [ 프로그래머스 ] 120887 - k의 개수
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120887
//

import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    return (i...j).map{ a in String(a).filter{ String($0) == String(k) }.count }.reduce(0,+)
}

solution(1, 13, 1)
