//
//  [ 프로그래머스 ] 181830 - 정사각형으로 만들기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181830
//

import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {
    var arr = arr
    if arr[0].count > arr.count {
        (arr.count..<arr[0].count).forEach{ _ in
            arr.append(Array(repeating: 0, count: arr[0].count))
        }
        return arr
    }else if arr[0].count < arr.count {
        return arr.map{ a in a + Array(repeating: 0, count: arr.count - arr[0].count) }
    }
    return arr
}
