//
//  [ 프로그래머스 ] 181879 - 길이에 따른 연산
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181879
//

import Foundation

func solution(_ num_list:[Int]) -> Int {
    return num_list.count >= 11 ? num_list.reduce(0,+) : num_list.reduce(1,*)
}
