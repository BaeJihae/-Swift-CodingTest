//
//  [ 프로그래머스 ] 120840 - 구슬을 나누는 경우의 수
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120840
//

import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    if balls == share {
        return 1
    }
    
    var share: Double = Double(share)
    var balls: Double = Double(balls)
    
    if share > balls/2.0 {
        share = balls - share
    }
    var answer = stride(from: balls, to: balls-share, by: -1.0).reduce(1, *) / stride(from: 1, through: share, by: 1.0).reduce(1, *)
    return Int(answer.rounded())
}

print(solution(30, 15))
