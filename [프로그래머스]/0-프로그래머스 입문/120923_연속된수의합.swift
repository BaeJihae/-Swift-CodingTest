//
//  [ 프로그래머스 ] 120923 - 연속된 수의 합
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120923
//

import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    var middle:Int = total / num
    var result: [Int] = []
    if num % 2 == 0 {
    // num이 짝수
        for i in middle-num/2+1...middle+num/2{
            result.append(i)
        }
    } else {
    // num이 홀수
        for i in middle-num/2...middle+num/2{
            result.append(i)
        }
    }
    return result
}
