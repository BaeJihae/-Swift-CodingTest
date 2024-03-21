//
//  [ 프로그래머스 ] 181905 - 문자열 뒤집기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181905
//

import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    let first = String(my_string.prefix(s))
    let middle = String(Array(my_string)[s...e].reversed())
    let last = String(my_string.suffix(my_string.count - e - 1))
    return first + middle + last
}

solution("Progra21Sremm3", 6, 12)
