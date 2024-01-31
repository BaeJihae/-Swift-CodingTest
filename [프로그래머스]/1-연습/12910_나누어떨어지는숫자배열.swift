//
//  [ 프로그래머스 ] 12910 - 나누어 떨어지는 숫자 배열
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/12910
//
import Foundation

public func progressTime(_ closure: () -> ()) -> TimeInterval {
    let start = CFAbsoluteTimeGetCurrent()
    closure()
    let diff = CFAbsoluteTimeGetCurrent() - start
    return (diff)
}

// 나의 풀이
// 정렬 후 비교와 비교 후 정렬의 시간 차이는 거의 없다.
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let answer = arr.filter{ $0 % divisor == 0 }.sorted{$0 < $1}
    return answer == [] ? [-1] : answer
}

print(progressTime {
    print(solution([1, 4, 30, 2000, 10000, 2, 3, 4, 6, 9, 345, 56756, 12, 334, 4353, 467,57 ,45 ,62345, 5, 9, 7, 10], 5))
})
