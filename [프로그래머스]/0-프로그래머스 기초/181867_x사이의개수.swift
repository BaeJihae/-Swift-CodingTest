//
//  [ 프로그래머스 ] 181867 - x 사이의 개수
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181867
//

import Foundation

func solution(_ myString:String) -> [Int] {
    return myString.components(separatedBy: "x").map{ $0.count }
}
