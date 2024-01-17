//
//  [ 프로그래머스 ] 181909 - 접미사 배열
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181909
//

import Foundation

func solution(_ my_string:String) -> [String] {
    var arr: [String] = []
    (1...my_string.count).forEach{ i in
        arr.append(String(my_string.suffix(i)))
    }
    return arr.sorted()
}
