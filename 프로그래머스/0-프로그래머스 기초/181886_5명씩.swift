//
//  [ 프로그래머스 ] 181886 - 5명씩
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181886
//

import Foundation

func solution(_ names:[String]) -> [String] {
    return stride(from: 0, through: names.count-1, by: 5).map{ names[$0]}
}
