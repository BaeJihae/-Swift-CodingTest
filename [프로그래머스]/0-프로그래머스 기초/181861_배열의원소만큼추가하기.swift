//
//  [ 프로그래머스 ] 181861 - 배열의 원소만큼 추가하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181861
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var x: [Int] = []
    arr.forEach{ x.append(contentsOf: repeatElement($0, count: $0)) }
    return x
}
