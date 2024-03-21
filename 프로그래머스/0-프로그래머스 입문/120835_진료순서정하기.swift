//
//  [ 프로그래머스 ] 120835 - 진료순서 정하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120835
//

import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    var emer = emergency.sorted(by: { $0 > $1})
    return emergency.map{ emer.index(of: $0)! + 1 }
}
