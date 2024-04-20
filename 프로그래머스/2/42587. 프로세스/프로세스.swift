import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    
    var priorities = priorities
    var answer = location
    var max = priorities.count
    var current = 0
    
    while !priorities.isEmpty {
        if priorities.contains(where: { $0 > priorities[0] }) {
            priorities.append( priorities[0] )
            priorities.removeFirst()
            answer -= 1
            
            if answer < current {
                answer = max - 1
            }
            
        }else {
            current += 1
            priorities.removeFirst()
            
            if answer < current{
                return answer + 1
            }
        }
    }
    
    return answer + 1
}