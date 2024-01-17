//
//  [ 프로그래머스 ] 120850 - 문자열 정렬하기(1)
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120850
//

import Foundation

func solution(_ my_string:String) -> [Int] {
    return my_string.filter{ $0.isNumber }.map{ Int(String($0))!}.sorted()
}
