//
//  [ 프로그래머스 ] 120843 - 공 던지기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120843
//

import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    return numbers[((k-1) * 2) % numbers.count]
}
