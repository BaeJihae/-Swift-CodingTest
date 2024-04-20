import Foundation

func solution(_ s:String) -> Bool
{
    
    if s.count%2 != 0 {
        return false
    }
    
    var stack = [Character]()
    for i in s {
        if stack == [] && i == ")" {
            return false
        }else if stack.last == "(" && i == ")" {
            stack.removeLast()
            continue
        }
        stack.append(i)
    }

    return stack.isEmpty
}