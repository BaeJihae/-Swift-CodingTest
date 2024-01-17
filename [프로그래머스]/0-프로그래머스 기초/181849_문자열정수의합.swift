//
//  [ 프로그래머스 ] 181849 - 문자열 정수의 합
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181849
//
import Foundation

func solution(_ num_str:String) -> Int {
    return num_str.map{ Int(String($0)) ?? 0 }.reduce (0, +)
}
