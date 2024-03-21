//
//  [ 프로그래머스 ] 181918 - 배열만들기4
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181918

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var i = 0
    var stk:[Int] = []
    while i < arr.count {
        if stk == [] || ( stk != [] && stk.last! < arr[i] ){
            stk.append(arr[i])
            i += 1
        }else {
            stk.removeLast()
        }
    }
    return stk
}
