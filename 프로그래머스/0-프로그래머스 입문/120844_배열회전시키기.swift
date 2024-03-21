//
//  [ 프로그래머스 ] 120844 - 배열 회전시키기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120844
//

import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var newNumbers = numbers
    if direction == "right"{
        numbers.enumerated().forEach{ newNumbers[($0.offset + 1) % numbers.count] = $0.element }
    }else {
        var a = newNumbers.removeFirst()
        newNumbers.append(a)
    }
    return newNumbers
}

print(solution([1,2,3], "left"))
