import Foundation

func solution(_ s:String) -> Int {
    
    var stack = [Character]()
    var count = 0
    var answer = 0
    
    for char in s {
        if stack == [] {
            stack.append(char)
        }else if stack.last == char {
            stack.append(char)
        }else {
            count += 1
        }
        
        if stack.count == count {
            stack = []
            answer += 1
            count = 0 
        }
    }
    if stack != [] {
        answer += 1 
    }
    return answer
}