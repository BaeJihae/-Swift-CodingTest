//
//  [ 프로그래머스 ] 181834 - l로 만들기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181834
//

import Foundation

func solution(_ myString:String) -> String {
    return myString.map{ $0 < "l" ? String("l") : String($0) }.joined()
}
