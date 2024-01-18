//
//  [ 프로그래머스 ] 159994 - 카드 뭉치
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/159994
//

import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    
    var cards1 = cards1
    var cards2 = cards2
    
    for word in goal{
    
        if cards1 != [] && word == cards1[0] {
            cards1.removeFirst()
        }else if cards2 != [] && word == cards2[0]{
            cards2.removeFirst()
        }else {
            return "No"
        }
    }
    return "Yes"
}
