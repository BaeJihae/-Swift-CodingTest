//
//  [ 프로그래머스 ] 181900 - 글자지우기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181900
//

import Foundation

func solution(_ my_string:String, _ indices:[Int]) -> String {
    return my_string.enumerated().filter{ !indices.contains($0.offset) }.map{ String($0.element) }.joined()
}
