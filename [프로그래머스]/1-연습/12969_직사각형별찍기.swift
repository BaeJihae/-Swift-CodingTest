//
// [프로그래머스] 12969 - 직사각형 별찍기
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12969
//

import Foundation

public func progressTime(_ closure: () -> ()) -> TimeInterval {
    let start = Date()
    closure()
    return Date().timeIntervalSince(start)
}

// 반복횟수
let time = 10000000
// 전체 실행 시간
var resultAll: TimeInterval = 0.0, resultAll2: TimeInterval = 0.0

// 실행시킬 함수 선언

// 나의 풀이
func solution1(_ a:Int,_ b:Int) {
    var answer = ""

    for _ in 1...b {
        for _ in 1...a {
            answer += "*"
        }
        answer += "\n"
    }

    print(answer)
}

// 다른 사람의 풀이
func solution2(_ a:Int,_ b:Int) {
    for _ in 0..<b {
        print(Array(repeating: "*", count: a).joined())
    }

}

for i in 1...10 {
    let result = progressTime {
        // 함수 실행
        solution1(1000, 1000)
    }
    resultAll += result
    print("[\(i)] 실행 시간 : \(result)(s)")
}
for i in 1...10 {
    let result2 = progressTime {
        // 함수 실행
        solution2(1000, 1000)
    }
    resultAll2 += result2
    print("[\(i)] 실행 시간 : \(result2)(s)")
}
print("전체 실행 시간 : \(resultAll)(s)")
print("전체 실행 시간 : \(resultAll2)(s)")
