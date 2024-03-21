//
//  [ 프로그래머스 ] 120888 - 중복된 문자 제거
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120888
//

import Foundation

// 해결 1
//func solution(_ my_string:String) -> String {
//    var stack = [String]()
//    for i in Array(my_string) {
//        if !stack.contains(String(i)) {
//            stack.append(String(i))
//        }
//    }
//    return stack.joined()
//}

// 해결 2
func solution(_ my_string:String) -> String {
    var stack = [String]()
    my_string.forEach { if !stack.contains(String($0)) { stack.append(String($0))} }
    return stack.joined()
}
