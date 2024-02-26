//
// [프로그래머스] 68644 - 두 개 뽑아서 더하기
//
// https://school.programmers.co.kr/learn/courses/30/lessons/68644
//
import Foundation

// 나의 풀이
func solution(_ numbers:[Int]) -> [Int] {
    var answer = [Int]()
    for i in 0..<numbers.count-1{
        for j in i+1..<numbers.count{
            let newN:Int = numbers[i] + numbers[j]
            if !answer.contains(newN) {
                answer.append(newN)
            }
        }
    }
    return answer.sorted()
}
