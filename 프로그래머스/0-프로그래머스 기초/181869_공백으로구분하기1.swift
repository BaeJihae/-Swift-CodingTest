//
//  [ 프로그래머스 ] 181869 - 공백으로 구분하기 1
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181869
//

import Foundation

func solution(_ my_string:String) -> [String] {
    return my_string.components(separatedBy: " ").map{ $0 }
}
