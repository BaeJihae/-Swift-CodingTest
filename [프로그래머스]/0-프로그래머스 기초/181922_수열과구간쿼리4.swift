//
//  [ 프로그래머스 ] 181922 - 수열과 구간 쿼리4
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181922
//

import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var newArray = arr
    queries.forEach{ i in
        (i[0]...i[1]).filter{ $0 % i[2] == 0 }.forEach{ newArray[$0] += 1 }
    }
    return newArray
}


print(solution([0, 1, 2, 4, 3], [[0, 4, 1],[0, 3, 2],[0, 3, 3]]))
