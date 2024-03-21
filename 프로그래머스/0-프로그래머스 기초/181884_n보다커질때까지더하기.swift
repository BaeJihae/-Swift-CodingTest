//
//  [ 프로그래머스 ] 181884 - n보다 커질 때까지 더하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181884
//

import Foundation

func solution(_ numbers:[Int], _ n:Int) -> Int {
    var sum = 0
    for num in numbers{
        if sum > n {
            break
        }
        sum += num
    }
    return sum
}
