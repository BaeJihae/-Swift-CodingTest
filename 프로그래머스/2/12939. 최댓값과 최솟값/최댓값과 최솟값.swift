func solution(_ s:String) -> String {
    var str = s.split(separator: " ").map{ Int(String($0))! }
    return "\(str.min()!) \(str.max()!)"
}