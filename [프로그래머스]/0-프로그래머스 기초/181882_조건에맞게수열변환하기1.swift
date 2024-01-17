//
//  [ 프로그래머스 ] 181882 - 조건에 맞게 수열 변환하기 1
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181882
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    return arr.map{ i in
        if i >= 50 && i % 2 == 0 {
            return i/2
        }else if i < 50 && i % 2 != 0 {
            return i*2
        }else {
            return i
        }
    }
}
