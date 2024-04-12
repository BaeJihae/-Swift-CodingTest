import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    
    var dic = [Int:Int]()
    var k = k, count = 0
    
    for i in tangerine {
        dic[i] = ( dic[i] ?? 0 ) + 1
    }
    
    for i in dic.values.sorted(by: >){
        k -= i
        count += 1
        if k <= 0 {
            return count
        }
    }
    return 0
}