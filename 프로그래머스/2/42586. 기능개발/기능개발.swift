import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var numberOfRemaining = zip(progresses, speeds).map{ Int(ceil(Double(100 - $0) / Double($1))) }
    numberOfRemaining.append(100)
    
    var answer = [Int]()
    var a = numberOfRemaining[0]
    var count = 0
    
    for i in numberOfRemaining {
        if a >= i {
            count += 1
        }else {
            answer.append(count)
            a = i
            count = 1
        }
    }
    
    
    return answer
}