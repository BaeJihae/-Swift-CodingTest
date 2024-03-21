//
//  [ 프로그래머스 ] 120847 - 최댓값 만들기(1)
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120847
//

import Foundation

func solution(_ numbers:[Int]) -> Int {
    return numbers.sorted(by: {$0 > $1})[0...1].reduce(1, *)
}
