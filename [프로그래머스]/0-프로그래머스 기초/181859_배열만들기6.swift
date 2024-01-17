//
//  [ 프로그래머스 ] 181859 - 배열만들기6
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181859
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    
    var i: Int = 0
    var stk: [Int] = []
    while i < arr.count {
        if stk == [] {
            stk.append(arr[i])
            i += 1
        }else {
            if stk.last == arr[i]{
                stk.removeLast()
                i += 1
            }else {
                stk.append(arr[i])
                i += 1
            }
        }
    }
    return stk == [] ? [-1] : stk
}
