//
//  [ 프로그래머스 ] 181865 - 간단한 식 계산하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181865
//

import Foundation

func solution(_ binomial:String) -> Int {
    var bin = binomial.components(separatedBy: " ")
    guard let a = Int(bin[0]), let b = Int(bin[2]) else { return 0 }
    return bin[1] == "+" ? a+b : bin[1] == "-" ? a-b : a*b
}
