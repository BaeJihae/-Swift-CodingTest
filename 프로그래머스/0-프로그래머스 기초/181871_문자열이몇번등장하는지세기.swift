//
//  [ 프로그래머스 ] 181871 - 문자열이 몇 번 등장하는지 세기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181871
//

import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var answer: Int = 0
    var string = myString
    while(string != ""){
        if string.hasPrefix(pat) {
            answer += 1
        }
        string = String(myString.dropFirst())
    }
    return answer
}
