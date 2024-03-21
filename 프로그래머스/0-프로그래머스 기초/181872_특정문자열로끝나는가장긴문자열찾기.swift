//
//  [ 프로그래머스 ] 181872 - 특정 문자열로 끝나는 가장 긴 부분 문자열 찾기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181872
//

import Foundation

func solution(_ myString:String, _ pat:String) -> String {
    var index:[Int] = []
    for i in 0...myString.count-pat.count{
        if String(Array(myString)[i...(i+pat.count-1)]) == pat {
            index.append(i)
        }
    }
    return String(Array(myString)[0...(index.max()!+pat.count-1)])
}

print(solution("AbCdEFG", "dE"))
print(solution("AAAAaaaa", "a"))
