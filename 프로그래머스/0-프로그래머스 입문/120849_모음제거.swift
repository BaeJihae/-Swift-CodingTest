//
//  [ 프로그래머스 ] 120849 - 모음 제거
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120849
//

import Foundation

func solution(_ my_string:String) -> String {
    let vowel = ["a","e","i","o","u"]
    return my_string.filter{ !vowel.contains(String($0)) }
}
