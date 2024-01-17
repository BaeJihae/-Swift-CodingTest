//
//  [ 프로그래머스 ] 120922 - 종이 자르기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120922
//

import Foundation

func solution(_ M:Int, _ N:Int) -> Int {
    var count = 0
    switch (M, N) {
        case (1,1):
            return 0
        case (1,_):
            return N-1
        case (_,1):
            return M-1
        default:
            return (M-1) + M * (N-1)
    }
}
