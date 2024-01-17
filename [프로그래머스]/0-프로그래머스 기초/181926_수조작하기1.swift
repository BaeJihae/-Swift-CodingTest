//
//  [ 프로그래머스 ] 181926 - 수 조작하기 1
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181926
//

import Foundation

func solution(_ n:Int, _ control:String) -> Int {
    return control.map{ $0 == "w" ? 1 : ( $0 == "s" ? -1 : ( $0 == "d" ? 10 : -10 )) }.reduce (n, +)
}
