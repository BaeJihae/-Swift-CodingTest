//
//  [ 프로그래머스 ] 181947 - 덧셈식 출력하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181947
//

import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

print("\(a) + \(b) = \(a+b)")
