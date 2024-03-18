func solution(_ dartResult:String) -> Int {
    
    // 문자열 배열로 변환
    var dartResult = Array(dartResult)
    // 방금 들어온 숫자 저장
    var nowNum = 0
    // 숫자 저장
    var num = [Int]()
    
    while !dartResult.isEmpty {
        if dartResult.first!.isNumber {
            num.append(nowNum)
            if let num = Int(String(dartResult.prefix(2))){
                nowNum = num
                dartResult.removeFirst(2)
                continue
            }
            if let num = Int(String(dartResult.first!)) {
                nowNum = num
                dartResult.removeFirst()
                continue
            }
        }
        
        switch dartResult.first! {
        case "D":
            nowNum = nowNum * nowNum
        case "T":
            nowNum = nowNum * nowNum * nowNum
        case "*":
            var n = num.count
            num[n-1] *= 2
            nowNum = 2 * nowNum
        case "#":
            nowNum = -nowNum
        default: //"S"
            break
        }
        dartResult.removeFirst()
    }
    num.append(nowNum)
    
    return num.reduce(0, +)
}
