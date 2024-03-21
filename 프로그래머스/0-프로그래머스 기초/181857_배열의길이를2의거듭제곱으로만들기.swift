//
//  [ 프로그래머스 ] 181857 - 배열의 길이를 2의 거듭제곱으로 만들기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181857
//
import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var i = 1
    while i < arr.count { i <<= 1 }
    return arr + Array(repeating: 0, count: abs(arr.count - i))
}

print(solution([1, 2, 3, 4, 5, 6]))
