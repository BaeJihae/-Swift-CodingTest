//
//  [ 프로그래머스 ] 120839 - 가위바위보
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120839
//

import Foundation

func solution(_ rsp:String) -> String {
    return rsp.map{ $0 == "2" ? "0" : ( $0 == "5" ) ? "2" : "5" }.joined()
}
