//
//  [ 프로그래머스 ] 120896 - 한 번만 등장한 문자
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120896
//

import Foundation

//func solution(_ s:String) -> String {
//    var stack = [String]()
//    var already = [String]()
//    for i in s.sorted() {
//        if stack.contains(String(i)) {
//            already.append(stack.popLast()!)
//        }else if !already.contains(String(i)) {
//            stack.append(String(i))
//        }
//    }
//    return stack.joined()
//}

func solution(_ s:String) -> String {
    print(Dictionary(grouping: Array(s).map(String.init), by: { $0 }))
    return Dictionary(grouping: Array(s).map(String.init), by: { $0 }).filter{$0.value.count <= 1}
        .map{ $0.key }
        .sorted(by: { $0 < $1 })
        .joined()
}

print(solution("hello"))
