//
// [프로그래머스] 12930 - 이상한 문자 만들기
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12930
//

import Foundation

// 나의 풀이
func solution(_ s:String) -> String {
    var arrayS = [String]()
    for i in s.components(separatedBy: " "){
        arrayS.append(i.enumerated().map{ $0.offset % 2 == 0 ? $0.element.uppercased() : $0.element.lowercased() }.joined())
    }
    return arrayS.joined(separator: " ")
}
