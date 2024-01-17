//
//  [ 프로그래머스 ] 181893 - 배열 조각하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181893
//

import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var newArr:[Int] = arr
    for i in 0...query.count-1 {
        newArr = i % 2 == 0 ? Array(newArr.prefix(through: query[i])) : Array(newArr.dropFirst(query[i]))
    }

    return newArr
}

