//
//  [ 프로그래머스 ] 181880 - 1로 만들기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181880
//

import Foundation

func solution(_ num_list:[Int]) -> Int {
    var count = 0
    for i in num_list {
        var x = i
        while x != 1 {
            if x % 2 == 0 {
                x = x/2
                count += 1
            }else {
                x = (x-1)/2
                count += 1
            }
        }
    }
    return count
}
