//
//  [ 프로그래머스 ] 120882 - 등수 매기기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120882
//

import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    let avr = score.map { Double($0.reduce(0, +)) / 2.0 }
    return avr.map{ avr.sorted(by: >).firstIndex(of: $0)!+1 }
}
print(solution([[80, 70], [90, 50], [40, 70], [50, 80]]))
print(solution([[80, 70], [70, 80], [30, 50], [90, 100], [100, 90], [100, 100], [10, 30]]))
