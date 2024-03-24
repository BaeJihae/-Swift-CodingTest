func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    
    return (0..<n).map{
        var orStr = String(arr1[$0]|arr2[$0], radix: 2)
        return (String(repeating: "0",count: n-orStr.count) + orStr).map{ $0 == "1" ? "#" : " " }.joined()
                      }
}