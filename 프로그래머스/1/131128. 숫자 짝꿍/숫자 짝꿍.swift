import Foundation

func solution(_ X:String, _ Y:String) -> String {
    
    let setX = Set(X)
    let setY = Set(Y)
    let intersect = setX.intersection(setY)
    
    var duplication = [String]()
    
    for i in Array(intersect) {
        let count = min(Y.filter{ $0 == i }.count, X.filter{ $0 == i }.count)
        (0..<count).forEach{ _ in duplication.append(String(i)) }
    }
    
    if duplication.isEmpty {
        return "-1"
    }else if duplication.filter{ $0 == "0" }.count == duplication.count {
        return "0"
    }
    
    return duplication.sorted(by: >).joined()
}