func solution(_ dartResult:String) -> Int {
    
    // 전에 들어온 숫자 저장
    var beforeNum = 0
    // 방금 들어온 숫자 저장
    var nowNum = 0
    // 총 합
    var totalNum = 0
    // 전에 들어온 숫자를 총합에 저장하기 위해 들어온 숫자의 개수를 헤아림
    var count = 0
    var dartResult = Array(dartResult)
    
    while !dartResult.isEmpty {
        
        if let num = Int(String(dartResult.prefix(2))){
            if count == 2 {
                totalNum += beforeNum
            }
            beforeNum = nowNum
            nowNum = num
            count += 1
            dartResult.removeFirst(2)
            continue
        }
        if let num = Int(String(dartResult.first!)) {
            if count == 2 {
                totalNum += beforeNum
            }
            beforeNum = nowNum
            nowNum = num
            count += 1
            dartResult.removeFirst()
            continue
        }
        
        switch dartResult.first! {
        case "D":
            nowNum = nowNum * nowNum
        case "T":
            nowNum = nowNum * nowNum * nowNum
        case "*":
            nowNum = 2 * nowNum
            beforeNum = 2 * beforeNum
        case "#":
            nowNum = -nowNum
        default: //"S"
            break
        }
        dartResult.removeFirst()
    }
    totalNum += beforeNum
    totalNum += nowNum
    
    return totalNum
}
