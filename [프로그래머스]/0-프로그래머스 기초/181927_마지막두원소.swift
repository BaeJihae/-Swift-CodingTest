//
//  [ 프로그래머스 ] 181927 - 마지막 두 원소
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181927
//

import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var newlist = num_list
    var i = num_list.count
    newlist.append(num_list[i-1] > num_list[i-2] ? num_list[i-1]-num_list[i-2] : num_list[i-1] * 2 )
    return newlist
    //return num_list + [num_list[i-1] > num_list[i-2] ? num_list[i-1]-num_list[i-2] : num_list[i-1] * 2 ]
}
