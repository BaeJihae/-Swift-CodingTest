//
//  [ 프로그래머스 ] 181843 - 부분 문자열인지 확인하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181843
//
import Foundation

func solution(_ my_string:String, _ target:String) -> Int {
    return my_string.contains(target) ? 1 : 0
}
