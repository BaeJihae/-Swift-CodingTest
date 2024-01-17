//
//  [ 프로그래머스 ] 181853 - 뒤에서 5등까지
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181853
//
import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    return Array(num_list.sorted().prefix(5))
}


