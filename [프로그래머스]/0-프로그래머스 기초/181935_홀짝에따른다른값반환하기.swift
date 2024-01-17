//
//  [ 프로그래머스 ] 181935 - 홀짝에 따른 다른 값 반환하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181935
//

import Foundation

func solution(_ n:Int) -> Int {
    var k: Int = 0
    if n%2 == 0 {
        stride(from: 2, through: n, by : 2).map{k += $0*$0}
    }else {
        stride(from: 1, through: n, by : 2).map{k += $0}
    }
    return k
}
