//
//  [ 프로그래머스 ] 181875 - 배열에서 문자열 대소문자 변환하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181875
//

import Foundation

func solution(_ strArr:[String]) -> [String] {
    return strArr.enumerated().map{ $0.offset % 2 == 1 ? $0.element.uppercased() : $0.element.lowercased()}
}
