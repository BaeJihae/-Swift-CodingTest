import Foundation

func solution(_ citations:[Int]) -> Int {
    
    var sortedCitations = citations.sorted(by: >)
    
    for (i, count) in sortedCitations.enumerated() {
        if i+1 <= count {
            continue
        }else {
            return i
        }
    }
    
    return citations.count
}