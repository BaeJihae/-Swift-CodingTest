//
// [프로그래머스] 77884 - 약수의 개수와 덧셈
//
// https://school.programmers.co.kr/learn/courses/30/lessons/77884
//

import Foundation

public func progressTime(_ closure: () -> ()) -> TimeInterval {
    let start = Date()
    closure()
    return Date().timeIntervalSince(start)
}

// 전체 실행 시간
var resultAll: TimeInterval = 0.0, resultAll2: TimeInterval = 0.0

// 실행시킬 함수 선언

// 나의 풀이
func solution(_ left:Int, _ right:Int) -> Int {
    var answer = 0
    for i in left...right {
        if Int(sqrt(Double(i)))*Int(sqrt(Double(i))) == i {
            answer -= i
        }else {
            answer += i
        }
    }
    return answer
}

// 다른 사람의 풀이
func solution2(_ left:Int, _ right:Int) -> Int {
    var answer = 0

    for number in left...right{
        if floor(sqrt(Double(number))) == sqrt(Double(number)) {
            answer -= number
        } else {
            answer += number
        }
    }
    return answer
}

for i in 1...20 {
    let result = progressTime {
        // 함수 실행
        solution(1, 1000)
    }
    resultAll += result
    
    print("[\(i)] solution1 실행 시간 : \(result)(s)")
    
    let result2 = progressTime {
        // 함수 실행
        solution2(1, 1000)
    }
    resultAll2 += result2
    print("[\(i)] solution2 실행 시간 : \(result2)(s)")
}
print("solution1 전체 실행 시간 : \(resultAll)(s)")
print("solution2 전체 실행 시간 : \(resultAll2)(s)")
