//
//  [ 프로그래머스 ] 181898 - 가까운 1 찾기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181898
//

import Foundation

func solution(_ arr:[Int], _ idx:Int) -> Int {
    for i in idx...arr.count-1{
        if arr[i] == 1 {
            return i
        }
    }
    return -1
}
