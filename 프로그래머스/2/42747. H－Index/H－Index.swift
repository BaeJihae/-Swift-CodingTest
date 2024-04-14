import Foundation

func solution(_ citations:[Int]) -> Int {
    
    var sortedCitations = citations.sorted(by: >)
    
    for i in (0...sortedCitations[0]).reversed() {
        if sortedCitations.filter{ $0 >= i }.count >= i {
            return i
        } 
    }
    
    return 0
}