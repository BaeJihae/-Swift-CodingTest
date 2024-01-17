//
//  [ 프로그래머스 ] 120893 - 대문자와 소문자
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120893
//

import Foundation

func solution(_ my_string:String) -> String {
    return my_string.map{ $0.isLowercase ? $0.uppercased() : $0.lowercased() }.joined()
}
