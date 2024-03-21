//
//  [ 프로그래머스 ] 181883 - 수열과 구간 쿼리 1
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181883
//

import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var newArr = arr
    queries.forEach{ a in
        for i in (a[0]...a[1]) {
            newArr[i] += 1
        }
    }
    return newArr
}
