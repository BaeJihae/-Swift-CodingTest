//
//  [ 프로그래머스 ] 181866 - 문자열 잘라서 정렬하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181866
//

import Foundation

func solution(_ myString:String) -> [String] {
    return myString.split(separator: "x").map{ String($0) }.sorted()
}
