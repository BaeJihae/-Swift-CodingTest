//
//  [ 프로그래머스 ] 181928 - 이어 붙인 수
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181928
//

import Foundation

func solution(_ num_list:[Int]) -> Int {
    return Int(num_list.filter{ $0%2 == 0 }.map{ String($0) }.joined())!+Int(num_list.filter{ $0%2 == 1 }.map{ String($0) }.joined())!
}
