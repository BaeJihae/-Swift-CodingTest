//
// [프로그래머스] 131705 - 삼총사
//
// https://school.programmers.co.kr/learn/courses/30/lessons/131705
//

import Foundation

// 나의 풀이
func solution(_ number:[Int]) -> Int {
    var count = 0
    for i in 0..<number.count-2{
        for j in (i+1)..<number.count-1{
            for z in (j+1)..<number.count{
                if number[i] + number[j] + number[z] == 0{
                    count += 1
                }
            }
        }
    }
    return count
}

// 다른 사람의 풀이
func solution2(_ number:[Int]) -> Int {
    var answer = 0
    func dfs(_ now: Int, _ sum: Int, _ count: Int) {
        if count == 3 {
            if sum == 0 { answer += 1 }
            return
        }
        for i in now..<number.count {
            dfs(i+1, sum + number[i], count + 1)
        }
    }
    dfs(0, 0, 0)
    return answer
}
