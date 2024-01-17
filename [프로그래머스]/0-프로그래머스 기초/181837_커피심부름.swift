//
//  [ 프로그래머스 ] 181837 - 커피 심부름
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181837
//

import Foundation

func solution(_ order:[String]) -> Int {
    
    // 아메리카노 개수
    let a: Int = order.filter{ $0.contains("americano") || $0.contains("anything") }.count
    // 카페라떼 개수
    let b: Int = order.filter{$0.contains("cafelatte")}.count
    
    //return order.map{ $0.contains("cafelatte") ? 5000 : 4500 }.reduce(0,+)
    return a * 4500 + b * 5000
}
