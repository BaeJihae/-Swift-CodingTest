import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var budget = budget
    var d = d.sorted()
    var count = 0
    
    for i in d{
        if budget < i {break}
        budget -= i
        count += 1
    }
    
    return count
}