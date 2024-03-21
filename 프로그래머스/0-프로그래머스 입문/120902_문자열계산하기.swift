//
//  [ 프로그래머스 ] 120902 - 문자열 계산하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120902
//

import Foundation

func solution(_ my_string:String) -> Int {
    var str = my_string.components(separatedBy: " ")
    
    var answer: Int = Int(str[0])!
    var i = 2
    while i < str.count {
        if str[i-1] == "+" { answer += Int(str[i])! }
        else { answer -= Int(str[i])! }
        i += 2
    }
    
    return answer
}

print(solution("3 + 4"))
