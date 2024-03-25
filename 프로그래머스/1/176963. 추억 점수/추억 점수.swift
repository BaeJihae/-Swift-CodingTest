import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var count:Int = 0
    var result: [Int] = []
    // 딕셔너리 입력
    var dic: Dictionary<String, Int> = [:]
    for i in 0..<name.count{
        dic[name[i]] = yearning[i]
    }
    for j in photo {
        for k in j {
            if let a = dic[k] {
                count += a
            }
        }
        result.append(count)
        count = 0
    }
    return result
}