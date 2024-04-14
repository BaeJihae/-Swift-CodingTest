import Foundation

func solution(_ elements:[Int]) -> Int {
    
    var sumElements = [Int]()
    
    for num in 0..<elements.count {
        var some = 0
        for i in 0..<elements.count-1 {
            some += elements[(num + i)%elements.count]
            sumElements.append(some)
        }
    }
    sumElements.append(elements.reduce(0){$0 + $1})
    
    return Set(sumElements).count
}