//
//  [ 프로그래머스 ] 181894 - 2의 영역
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181894
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    guard let f = arr.firstIndex(where: { $0 == 2 }), let l = arr.lastIndex(where: { $0 == 2 }) else { return [-1] }
    return Array(arr[f...l])
}
