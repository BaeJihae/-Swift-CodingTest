//
// [프로그래머스] 81301 - 숫자 문자열과 영단어
//
// https://school.programmers.co.kr/learn/courses/30/lessons/81301
//

import Foundation

// 나의 풀이
func solution1(_ s:String) -> Int {

    var answer = ""
    var s = s
    let word: [String: Int] = ["zero":0, "one":1, "two":2, "three":3, "four":4, "five":5, "six":6, "seven":7 , "eight":8, "nine":9]

    while s != "" {
        if s.first!.isLetter {
            if let w3 = word[ String(s.prefix(3)) ] {
                answer += "\(w3)"
                s.removeFirst(3)
            }else if let w4 = word[ String(s.prefix(4)) ] {
                answer += "\(w4)"
                s.removeFirst(4)
            }else if let w5 =  word[ String(s.prefix(5)) ] {
                answer += "\(w5)"
                s.removeFirst(5)
            }
        }else {
            answer += "\(s.first!)"
            s.removeFirst(1)
        }
    }
    return Int(answer) ?? 0
}
