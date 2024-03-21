//
//  [ 프로그래머스 ] 181888 - n개 간격의 원소들
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181888
//

import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    return stride(from:0, through: num_list.count-1, by: n).map{ num_list[$0]}
}
