//
//  [ 프로그래머스 ] 181868 - 공백으로 구분하기 2
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181868
//

import Foundation

func solution(_ my_string:String) -> [String] {
    return my_string.split(separator: " ").map(String.init)
}

print(solution(" i    love  you"))
