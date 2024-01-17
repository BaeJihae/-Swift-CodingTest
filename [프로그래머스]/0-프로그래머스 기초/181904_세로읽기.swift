//
//  [ 프로그래머스 ] 181904- 세로 읽기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181905
//

import Foundation

func solution(_ my_string:String, _ m:Int, _ c:Int) -> String {
    return stride(from: c, through: my_string.count, by: m).map{ String(Array(my_string)[ $0 - 1 ]) }.joined()
}
