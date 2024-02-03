//
//  코딩테스트 시간 측정 코드
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
var resultAll: TimeInterval = 0.0

// 실행시킬 함수 선언

for i in 1...10 {
    let result = progressTime {
        // 함수 실행
    }
    resultAll += result
    print("[\(i)] 실행 시간 : \(result)(s)")
}
print("전체 실행 시간 : \(resultAll)(s)")
