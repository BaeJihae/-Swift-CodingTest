//
//  [ 프로그래머스 ] 120845 - 주사위의 개수
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120845
//

import Foundation

func solution(_ box:[Int], _ n:Int) -> Int {
    return box.reduce(1) { $0 * ($1/n) }
}
