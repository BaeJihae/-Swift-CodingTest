//
//  [ 프로그래머스 ] 181840 - 정수 찾기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181840
//

import Foundation

func solution(_ num_list:[Int], _ n:Int) -> Int {
    return num_list.filter{ $0 == n } == [] ? 0 : 1
}
