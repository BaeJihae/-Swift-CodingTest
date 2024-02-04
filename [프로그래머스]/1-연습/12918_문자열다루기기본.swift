//
// [프로그래머스] 12918 - 문자열 다루기 기본
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12918
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

// 나의 풀이1
func solution1(_ s:String) -> Bool {
    return ( s.count == 4 || s.count == 6 ) && s.filter{ $0.isNumber }.count == s.count ? true : false
}

// 다른 사람의 풀이
func solution2(_ s:String) -> Bool {
    return (Int(s) != nil && (s.count == 4 || s.count == 6)) ? true : false
}

for i in 1...20 {
    let result = progressTime {
        // 함수 실행
        solution1("23472935")
    }
    resultAll += result
    print("[\(i)] solution1 실행 시간 : \(result)(s)")
    
    let result2 = progressTime {
        // 함수 실행
        solution2("23472935")
    }
    resultAll2 += result2
    print("[\(i)] solution2 실행 시간 : \(result2)(s)")
}
print("solution1 전체 실행 시간 : \(resultAll)(s)")
print("solution2 전체 실행 시간 : \(resultAll2)(s)")
