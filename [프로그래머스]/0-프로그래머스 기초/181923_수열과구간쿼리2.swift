//
//  [ 프로그래머스 ] 181923 - 수열과 구간 쿼리2
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181923
//

import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    queries.map{ i in
        arr[i[0]...i[1]].filter{ $0 > i[2] }.min() ?? -1
    }
}
          
          
print(solution([0,1,2,4,3], [[0, 4, 2],[0, 3, 2],[0, 2, 2]]))
