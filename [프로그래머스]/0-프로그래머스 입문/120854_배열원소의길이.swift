//
//  [ 프로그래머스 ] 120854 - 배열 원소의 길이
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120854
//

import Foundation

func solution(_ strlist:[String]) -> [Int] {
    return strlist.map { $0.count }
}
