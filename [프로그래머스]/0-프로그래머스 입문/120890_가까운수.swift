//
//  [ 프로그래머스 ] 120890 - 가까운 수
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120890
//

import Foundation

// 해결1
//func solution(_ array:[Int], _ n:Int) -> Int {
//    let array = array.sorted()
//    var min = array[0]
//    array.forEach{ if abs($0-n) < abs(min-n) { min = $0 } }
//    return min
//}

// 다른 사람
func solution(_ array:[Int], _ n:Int) -> Int {
    return array.min { (abs($0-n),$0) < (abs($1-n),$1) }!
}
