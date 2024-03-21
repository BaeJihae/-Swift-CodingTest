//
//  [ 프로그래머스 ] 120846 - 합성수 찾기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120846
//

import Foundation

func solution(_ n:Int) -> Int {
    return (1...n).filter{ a in (1...a).filter{ a % $0 == 0 }.count > 2 }.count
}
