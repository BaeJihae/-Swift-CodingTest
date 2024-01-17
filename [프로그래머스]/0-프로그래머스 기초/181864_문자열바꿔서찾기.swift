//
//  [ 프로그래머스 ] 181864 - 문자열 바꿔서 찾기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181864
//

import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    return myString.contains( pat.map{ $0 == "A" ? "B" : "A"} ) ? 1 : 0
}
