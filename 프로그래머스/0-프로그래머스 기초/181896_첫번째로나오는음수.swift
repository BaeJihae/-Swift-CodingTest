//
//  [ 프로그래머스 ] 181896 - 첫 번째로 나오는 음수
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181896
//

import Foundation

func solution(_ num_list:[Int]) -> Int {
    return num_list.enumerated().filter{ $0.element < 0 }.map{ $0.offset }[0]
}

