//
//  [ 프로그래머스 ] 181887 - 홀수 vs 짝수
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181887
//

import Foundation

func solution(_ num_list:[Int]) -> Int {
    let even = stride(from: 0, through: num_list.count-1, by: 2).map{ num_list[$0] }.reduce(0,+)
    let odd = stride(from: 1, through: num_list.count-1, by: 2).map{ num_list[$0] }.reduce(0,+)
    return max(even, odd)
}

