//
//  [ 프로그래머스 ] 120853 - 컨트롤 제트
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120853
//

import Foundation

//func solution(_ s:String) -> Int {
//    let s = s.split(separator: " ").map{ String($0) }
//    var tmp = 0
//    var answer = 0
//    s.forEach { a in
//        if a == "Z" { answer -= tmp }
//        else{
//            tmp = Int(a)!
//            answer += Int(a)!
//        }
//    }
//    return answer
//}

import Foundation

func solution(_ s:String) -> Int {
    var stack = [Int]()
    
    for i in s.components(separatedBy: " "){
        if i == "Z" {
            stack.popLast()
        }else {
            stack.append(Int(i)!)
        }
    }
    return stack.reduce(0, +)
}

print(solution("1 2 Z 3"))
