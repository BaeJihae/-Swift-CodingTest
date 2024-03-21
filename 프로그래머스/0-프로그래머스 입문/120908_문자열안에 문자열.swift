//
//  [ 프로그래머스 ] 120908 - 문자열안에 문자열
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120908
//

import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    return str1.contains(str2) ? 1 : 2
}
