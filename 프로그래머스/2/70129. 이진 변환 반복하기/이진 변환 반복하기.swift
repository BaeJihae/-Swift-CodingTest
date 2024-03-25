import Foundation

func solution(_ s:String) -> [Int] {
    
    var n = 0, count = 0
    
    func binaryTranslation(numStr: String) -> [Int] {
        if numStr == "1" {
            return [n, count]
        }
        var length = numStr.filter{ $0 == "1" }.count
        count += numStr.count - length
        n += 1
        return binaryTranslation(numStr: String(length, radix: 2))
    }
    
    return binaryTranslation(numStr: s)
}