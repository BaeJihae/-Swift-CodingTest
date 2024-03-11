import Foundation

func solution(_ babbling:[String]) -> Int {
    
    var count = 0
    let word = [ "aya", "ye", "woo", "ma"]
    
    for bab in babbling {
        var bab = bab
        var pre: String = ""
        while true {
            if bab.count < 2 {
                break
            }else if bab.count == 2{
                let bab2 = String(bab.prefix(2))
                if word.contains(bab2) && bab2 != pre {
                    pre = bab2
                    bab.removeFirst(2)
                }else {
                    break
                }
            }else {
                let bab2 = String(bab.prefix(2))
                let bab3 = String(bab.prefix(3))
                
                if word.contains(bab2) && bab2 != pre {
                    pre = bab2
                    bab.removeFirst(2)
                }else if word.contains(bab3) && bab3 != pre {
                    pre = bab3
                    bab.removeFirst(3)
                }else {
                    break
                }
            }
            
            if bab == "" {
                count += 1
                break
            }

        }
    }
    
    return count
}