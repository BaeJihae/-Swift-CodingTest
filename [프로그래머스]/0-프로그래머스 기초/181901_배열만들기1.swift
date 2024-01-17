//
//  [ 프로그래머스 ] 181901 - 배열만들기1
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181901
//

import Foundation

func solution(_ n:Int, _ k:Int) -> [Int] {
    
    var answer: [Int] = []
    for i in 1...n{
        if i % k == 0 {
            answer.append(i)
        }
    }
    return answer
}
