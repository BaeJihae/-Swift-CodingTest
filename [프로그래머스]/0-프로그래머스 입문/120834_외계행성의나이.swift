//
//  [ 프로그래머스 ] 120834 - 외계행성의 나이
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120834
//

import Foundation

func solution(_ age:Int) -> String {
    return String(age).map{String(UnicodeScalar(Int(String($0))!+97)!)}.joined()
}
