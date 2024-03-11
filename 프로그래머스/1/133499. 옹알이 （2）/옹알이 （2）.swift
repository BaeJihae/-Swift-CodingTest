func solution(_ babbling:[String]) -> Int {
    var count: Int = 0
    for element in babbling {
        var str = String(element)
        str = str.replacingOccurrences(of: "aya", with: "1")
        str = str.replacingOccurrences(of: "ye", with: "2")
        str = str.replacingOccurrences(of: "woo", with: "3")
        str = str.replacingOccurrences(of: "ma", with: "4")
        if Int(str) != nil && !str.contains("11") && !str.contains("22") && !str.contains("33") && !str.contains("44"){
            count += 1
        }
    }    
    return count
}