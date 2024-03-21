//
//  [ 프로그래머스 ] 147355 - 크기가 작은 부분 문자열
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/147355
//
import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var t = t
    var count = 0
    
    while t.count >= p.count {
        if Int(t.prefix(p.count))! <= Int(p)! {
            count += 1
        }
        t.removeFirst()
    }
    
    return count
}
