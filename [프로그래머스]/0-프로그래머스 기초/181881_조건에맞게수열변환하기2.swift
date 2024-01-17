//
//  [ 프로그래머스 ] 181881 - 조건에 맞게 수열 변환하기 2
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181881
//

import Foundation

func solution(_ arr:[Int]) -> Int {
    
    var i = -1
    var arr1 : [Int] = arr
    var changed: Bool = true
    
    while changed{
        changed = false
        arr1 = arr1.map{ a in
            if a >= 50 && a % 2 == 0 {
                changed = true
                return a/2
            }else if a < 50 && a % 2 != 0 {
                changed = true
                return a*2 + 1
            }else {
                return a
            }
        }
        i += 1
    }
    return i
}
