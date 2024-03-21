//
// [프로그래머스] 142086 - 가장 가까운 같은 글자
//
// https://school.programmers.co.kr/learn/courses/30/lessons/142086
//
import Foundation

// 나의 풀이
func solution(_ s:String) -> [Int] {
    var stack = [String]()
    
    return s.map{ x in
         let chr: String = String(x)
         if stack == [] || !stack.contains(chr) {
             stack.append(chr)
             return -1
         }else{
             let a = stack.count - Int(stack.lastIndex(of: chr)!)
             stack.append(chr)
             return a
         }
    }
}

// 다른 사람의 풀이
func solution(_ s: String) -> [Int] {
    var word: [String: Int] = [:]
    var result: [Int] = []

    for (index, val) in Array(s).map { String($0) }.enumerated() {
        if let beforeIndex = word[val] {
            result.append(index - beforeIndex)
        } else {
            result.append(-1)
        }

        word[val] = index
    }

    return result
}
