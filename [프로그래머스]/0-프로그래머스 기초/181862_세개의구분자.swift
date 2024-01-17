//
//  [ 프로그래머스 ] 181862 - 세 개의 구분자
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181862
//

import Foundation

func solution(_ myStr:String) -> [String] {
    let answer = myStr.components(separatedBy: ["a","b","c"]).filter{ $0 != "" }
    return answer == [] ? ["EMPTY"] : answer
}
