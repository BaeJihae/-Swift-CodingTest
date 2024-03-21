//
//  [ 프로그래머스 ] 120842 - 2차원으로 만들기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120842
//

import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var answer: [[Int]] = []
    var num_list = num_list
    while num_list != []{
        answer.append( Array(num_list[0..<n]) )
        num_list.removeFirst(n)
    }
    return answer
}
