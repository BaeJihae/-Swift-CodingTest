//
//  [ 프로그래머스 ] 120892 - 암호 해독
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120892
//

import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    return cipher.enumerated().filter{ ( $0.offset + 1 ) % code == 0 }.map{ String($0.element) }.joined()
}

print(solution("dfjardstddetckdaccccdegk", 4))
