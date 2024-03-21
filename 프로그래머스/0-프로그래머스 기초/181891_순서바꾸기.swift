//
//  [ 프로그래머스 ] 181891 - 순서 바꾸기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181891
//

import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    return Array(num_list[n...] + num_list[...(n-1)])
}
