//
//  [ 프로그래머스 ] 181874 - A 강조하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181874
//

import Foundation

func solution(_ myString:String) -> String {
    return myString.map{ String($0) == "a" || String($0) == "A" ? "A" : $0.lowercased() }.joined()
}

