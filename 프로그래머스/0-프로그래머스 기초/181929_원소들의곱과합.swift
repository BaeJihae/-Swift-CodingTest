//
//  [ 프로그래머스 ] 181929 - 원소들의 곱과 합
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181929
//

import Foundation

func solution(_ num_list:[Int]) -> Int {
    return num_list.reduce(1,*) < Int(pow(Double(num_list.reduce(0,+)),2.0)) ? 1 : 0
}
