//
// [프로그래머스] 82612 - 부족한 금액 계산하기
//
// https://school.programmers.co.kr/learn/courses/30/lessons/82612
//

import Foundation

public func progressTime(_ closure: () -> ()) -> TimeInterval {
    let start = Date()
    closure()
    return Date().timeIntervalSince(start)
}

// 전체 실행 시간
var resultAll: TimeInterval = 0.0, resultAll2: TimeInterval = 0.0, resultAll3: TimeInterval = 0.0

// 실행시킬 함수 선언

// 나의 풀이1
func solution1(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let totalMoney = (1...count).map{ $0*price }.reduce(0,+)
    return totalMoney < money ? 0 : Int64(totalMoney - money)
}

// 나의 풀이2
func solution2(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var totalMoney = 0

    for n in 1...count{
        totalMoney += ( price * n )
    }
    return totalMoney < money ? 0 : Int64(totalMoney - money)
}

// 다른 사람의 풀이
func solution3(_ price:Int, _ money:Int, _ count:Int) -> Int{
    return max((count + 1) * count / 2 * price - money , 0)
}

for i in 1...20 {
    let result = progressTime {
        // 함수 실행
        solution1(2500, 1000000000, 2500)
    }
    resultAll += result
    print("[\(i)] solution1 실행 시간 : \(result)(s)")
    
    let result2 = progressTime {
        // 함수 실행
        solution2(2500, 1000000000, 2500)
    }
    resultAll2 += result2
    print("[\(i)] solution2 실행 시간 : \(result2)(s)")
    
    let result3 = progressTime {
        // 함수 실행
        solution3(2500, 1000000000, 2500)
    }
    resultAll3 += result3
    print("[\(i)] solution3 실행 시간 : \(result3)(s)")
}
print("solution1 전체 실행 시간 : \(resultAll)(s)")
print("solution2 전체 실행 시간 : \(resultAll2)(s)")
print("solution3 전체 실행 시간 : \(resultAll3)(s)")
