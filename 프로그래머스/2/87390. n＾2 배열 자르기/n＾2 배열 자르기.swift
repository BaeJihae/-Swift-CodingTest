import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {

    let left = Int(left)
    let right = Int(right)
    
    var answer = [Int]()
    
    for i in left/n...right/n {
        if left/n == right/n {
            for j in left%n...right%n {
                i >= j ? answer.append(i+1) : answer.append(j+1)
            }
        }else if i == left/n {
            for j in left%n..<n {
                i >= j ? answer.append(i+1) : answer.append(j+1)
            }
        }else if i == right/n {
            for j in 0...right%n {
                i >= j ? answer.append(i+1) : answer.append(j+1)
            }
        }else {
            for j in 0..<n {
                i >= j ? answer.append(i+1) : answer.append(j+1)
            }
        }
    }
    
    return answer
}