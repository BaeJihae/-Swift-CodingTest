import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    
    var wantDic = [String:Int]()
    var count = 0
    
    for (product, num) in zip(want, number) {
        wantDic[product] = num
    }
    
    for i in 0..<discount.count-9 {
        var dic = [String:Int]()
        for j in 0...9 {
            dic[discount[i+j]] = ( dic[discount[i+j]] ?? 0 ) + 1
        }
        if dic == wantDic {
            count += 1
        }
    }
    
    return count
}