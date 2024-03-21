//
//  [ 프로그래머스 ] 181913 - 문자열 여러 번 뒤집기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181913
//
import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    var str = Array(my_string)
    queries.forEach{ i in str[i[0]...i[1]].reverse() }
    return str.map{ String($0) }.joined()
}
