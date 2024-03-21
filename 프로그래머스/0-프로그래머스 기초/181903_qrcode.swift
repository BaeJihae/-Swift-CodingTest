//
//  [ 프로그래머스 ] 181903 - qr code
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181903
//

import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    return (0...code.count-1).filter{ $0 % q == r }.map{ String(Array(code)[$0]) }.joined()
}
