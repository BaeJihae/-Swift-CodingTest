//
//  [ 프로그래머스 ] 181895 - 배열만들기3
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181895
//

import Foundation

func solution(_ arr:[Int], _ intervals:[[Int]]) -> [Int] {
    return (intervals[0][0]...intervals[0][1]).map { arr[$0] } + (intervals[1][0]...intervals[1][1]).map { arr[$0] }
}
print(solution([1, 2, 3, 4, 5], [[1, 3], [0, 4]]))

