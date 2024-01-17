//
//  [ 프로그래머스 ] 181919 - 콜라츠 수열 만들기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181919
//
import Foundation

func solution(_ n:Int) -> [Int] {
    var arr: [Int] = []
    var n = n
    while true {
        arr.append(n)
        if n == 1 { break }
        n = n%2 == 0 ? n/2 : n*3+1
    }
    //return arr
    
    return sequence(first: n) { i in
        i == 1 ? nil : i % 2 == 0 ? n/2 : n*3+1
    }.map{$0}
}
