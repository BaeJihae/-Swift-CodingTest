//
//  [ 프로그래머스 ] 181878 - 원하는 문자열 찾기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181878
//

import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    return myString.lowercased().contains(pat.lowercased()) ? 1 : 0
}
