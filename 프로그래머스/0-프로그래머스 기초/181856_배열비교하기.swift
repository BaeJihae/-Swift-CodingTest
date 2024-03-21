//
//  [ 프로그래머스 ] 181856 - 배열 비교하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181856
//

import Foundation

func solution(_ arr1:[Int], _ arr2:[Int]) -> Int {
    if arr1.count == arr2.count {
        var sum_a = 0; var sum_b = 0
        arr1.forEach { sum_a += $0 }
        arr2.forEach { sum_b += $0 }
        return sum_a > sum_b ? 1 : (sum_a < sum_b) ? -1 : 0
    }else {
        return arr1.count > arr2.count ? 1 : -1
    }
}
