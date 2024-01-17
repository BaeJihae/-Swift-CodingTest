//
//  [ 프로그래머스 ] 181899 - 카운트 다운
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181899
//

import Foundation

func solution(_ start:Int, _ end_num:Int) -> [Int] {
    return stride(from: start, through: end_num, by: -1).map{ $0}
}
