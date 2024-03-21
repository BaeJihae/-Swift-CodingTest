//
//  [ 프로그래머스 ] 181852 - 뒤에서 5등 위로
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181852
//
import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    return Array(num_list.sorted().dropFirst(5))
}
