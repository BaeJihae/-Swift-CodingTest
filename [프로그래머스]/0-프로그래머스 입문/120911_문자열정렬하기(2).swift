//
//  [ 프로그래머스 ] 120911 - 문자열 정렬하기 (2)
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120911
//

import Foundation

func solution(_ my_string:String) -> String {
    return my_string.map{ String($0).lowercased() }.sorted().joined()
}
