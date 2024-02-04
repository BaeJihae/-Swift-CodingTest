//
// [프로그래머스] 12917 - 문자열 내림차순으로 배치하기
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12917
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
func solution1(_ s:String) -> String {
    return s.map{String($0)}.sorted { $0 > $1 }.joined()
}

// 다른 사람의 풀이
func solution2(_ s:String) -> String {
    return String(s.sorted { $0 > $1 })
}

for i in 1...20 {
    let result = progressTime {
        // 함수 실행
        solution1("dfadsfevdslkejofSDFAEfblxcvDefFgblkxvbjoixzcjlsejiofaEWflkfjvoixjvblkjrsiofgjalkhewfjkbxkcvnmochjxbrgnmklszhfkzljxfglousdlfkanwefSDFEFsfDFSDvklxjcvoerFSDFSEFxvlxvbrsdEgfgjalsdgjsdkxviojxlkjrioawjerflnAWERXCVXCBSFGJNEDSYERT")
    }
    resultAll += result
    
    print("[\(i)] solution1 실행 시간 : \(result)(s)")
    
    let result2 = progressTime {
        // 함수 실행
        solution2("dfadsfevdslkejofSDFAEfblxcvDefFgblkxvbjoixzcjlsejiofaEWflkfjvoixjvblkjrsiofgjalkhewfjkbxkcvnmochjxbrgnmklszhfkzljxfglousdlfkanwefSDFEFsfDFSDvklxjcvoerFSDFSEFxvlxvbrsdEgfgjalsdgjsdkxviojxlkjrioawjerflnAWERXCVXCBSFGJNEDSYERT")
    }
    resultAll2 += result2
    print("[\(i)] solution2 실행 시간 : \(result2)(s)")
}
print("solution1 전체 실행 시간 : \(resultAll)(s)")
print("solution2 전체 실행 시간 : \(resultAll2)(s)")
