//
//  [ 프로그래머스 ] 120851 - 숨어있는 숫자의 덧셈 (1)
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120851
//

import Foundation

func solution(_ my_string:String) -> Int {
    return my_string.map{ $0.isNumber ? Int(String($0))! : 0 }.reduce(0,+)
}
