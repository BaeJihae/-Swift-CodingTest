import Foundation

func solution(_ s:String) -> Int {
    
    var s = s
    var count = 0
    
    if s.count % 2 != 0 {
        return 0
    } 
    
    for _ in 1...s.count {
    
        var char = s.prefix(1)
        s.removeFirst()
        s = s + char
        
        var k = s
        
        for _ in 1...s.count/2 {
            var a = k
            k = k.replacingOccurrences(of: "{}", with: "")
            k = k.replacingOccurrences(of: "[]", with: "")
            k = k.replacingOccurrences(of: "()", with: "")
            if k == "" {
                count += 1
                break
            }else if k == a {
                break
            }
        }
    }
    
    return count
}