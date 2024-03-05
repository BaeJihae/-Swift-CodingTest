//
// [프로그래머스] 42840 - 모의고사
//
// https://school.programmers.co.kr/learn/courses/30/lessons/42840
//

import Foundation

// 나의 풀이
func solution(_ answers:[Int]) -> [Int] {
    
    // 수포자들의 답안지
    let case1 = [1,2,3,4,5]
    let case2 = [2,1,2,3,2,4,2,5]
    let case3 = [3,3,1,1,2,2,4,4,5,5]
    
    // 맞춘 개수
    var answersCount: [Int] = [0,0,0]
    
    for i in 0..<answers.count {
        if case1[i%5] == answers[i%answers.count] {
            answersCount[0] += 1
        }
        if case2[i%8] == answers[i%answers.count] {
            answersCount[1] += 1
        }
        if case3[i%10] == answers[i%answers.count] {
            answersCount[2] += 1
        }
    }
    
    return answersCount.enumerated().filter{ $0.element == answersCount.max()! }.map{ $0.offset + 1 }
}

// 다른 사람의 풀이

func solution2(_ answers:[Int]) -> [Int] {
    let answer = (
        a: [1, 2, 3, 4, 5], // index % 5
        b: [2, 1, 2, 3, 2, 4, 2, 5], // index % 8
        c: [3, 3, 1, 1, 2, 2, 4, 4, 5, 5] // index % 10
    )
    var point = [1:0, 2:0, 3:0]

    for (i, v) in answers.enumerated() {
        if v == answer.a[i % 5] { point[1] = point[1]! + 1 }
        if v == answer.b[i % 8] { point[2] = point[2]! + 1 }
        if v == answer.c[i % 10] { point[3] = point[3]! + 1 }
    }

    return point.sorted{ $0.key < $1.key }.filter{ $0.value == point.values.max() }.map{ $0.key }
}
