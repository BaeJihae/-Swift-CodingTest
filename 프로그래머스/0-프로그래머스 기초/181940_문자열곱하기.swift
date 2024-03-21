//
//  [ 프로그래머스 ] 181939 - 문자열 곱하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181940
//

import Foundation

func solution(_ my_string:String, _ k:Int) -> String {
    var new: String = ""
    return (1...k).map{ _ in new + my_string }.joined()
}

print(solution("a", 10))
