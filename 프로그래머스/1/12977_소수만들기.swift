//
// [프로그래머스] 12977 - 소수 만들기
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12977
//

import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    let numsCount = nums.count
    
    for i in 0..<numsCount-2 {
        for j in i+1..<numsCount-1 {
            for k in j+1..<numsCount {
                answer += isPrimeNumber(nums[i] + nums[j] + nums[k]) ? 1 : 0
            }
        }
    }
    return answer
}

func isPrimeNumber(_ n: Int) -> Bool {
    for i in (2..<n) {
        if n % i == 0 {
            return false
        }
    }
    return true
}
