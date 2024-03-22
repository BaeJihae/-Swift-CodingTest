func solution(_ s:String) -> String {
    s.replacingOccurrences(of: " ", with: " -")
     .split(separator: "-")
     .map{ $0.prefix(1).uppercased() + $0.suffix($0.count-1).lowercased()}
     .reduce("", +)
}