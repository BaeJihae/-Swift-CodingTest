//
//  [ 프로그래머스 ] 120886 - A로 B 만들기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120886
//

import Foundation

func solution(_ before:String, _ after:String) -> Int {
    return before.sorted() == after.sorted() ? 1 : 0
}
