//
//  [ 프로그래머스 ] 120833 - 배열 자르기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120833
//

import Foundation

func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    return Array(numbers[num1...num2])
}
