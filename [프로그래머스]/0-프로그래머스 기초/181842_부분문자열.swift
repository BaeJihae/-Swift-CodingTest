//
//  [ 프로그래머스 ] 181842 - 부분 문자열
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181842
//
import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    return str2.contains(str1) ? 1 : 0
}
