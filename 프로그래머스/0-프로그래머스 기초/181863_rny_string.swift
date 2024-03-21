//
//  [ 프로그래머스 ] 181863 - rny_string
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181863
//

import Foundation

func solution(_ rny_string:String) -> String {
    return rny_string.replacingOccurrences(of: "m", with: "rn")
}
