//
//  [ 프로그래머스 ] 181870 - ad 제거하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181870
//

import Foundation

func solution(_ strArr:[String]) -> [String] {
    return strArr.filter{ $0.contains("ad") == false }.map{ $0 }
}
