//
//  [ 프로그래머스 ] 181915 - 글자 이어 붙여 문자열 만들기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181915
//
import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    return index_list.map{ String(Array(my_string)[$0]) }.joined()
}

solution("zpiaz", [1,2,0,0,3])
