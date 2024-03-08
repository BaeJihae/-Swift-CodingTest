//
// [프로그래머스] 77484 - 로또의 최고 순위와 최저 순위
//
// https://school.programmers.co.kr/learn/courses/30/lessons/77484
//

import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    
    // 0의 개수 구하기
    let number0 = lottos.filter{ $0 == 0 }.count
    
    // 현재 순위
    var rank = 7
    
    // 일치하는 값
    for i in win_nums {
        if lottos.contains(i) {
            rank -= 1
        }
    }
    
    let best = rank - number0
    
    return [ best == 7 ? 6 : best , rank == 7 ? 6 : rank ]
}
