//
//  [ 프로그래머스 ] 181885 - 할 일 목록
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181885
//

import Foundation

func solution(_ todo_list:[String], _ finished:[Bool]) -> [String] {
    return todo_list.enumerated().filter{ finished[$0.offset] == false }.map{ $0.element }
}
