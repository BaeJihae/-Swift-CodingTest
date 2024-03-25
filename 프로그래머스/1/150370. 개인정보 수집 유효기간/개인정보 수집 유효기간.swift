import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    
    // 오늘의 날짜
    let todayYear = Int(today.split(separator: ".")[0])!
    let todayMonth = Int(today.split(separator: ".")[1])!
    let todayDay = Int(today.split(separator: ".")[2])!
    
    // 약관 종류에 따른 기간을 딕셔너리에 추가
    var kindOfTerms: Dictionary<String, Int> = [:]
    for i in terms{
        kindOfTerms.updateValue(Int(i.split(separator: " ")[1])!, forKey: String(i.split(separator: " ")[0]))
    }
    
    // 보관 가능한 인덱스 번호 저장
    var answer: [Int] = []
    
    for i in 0..<privacies.count{
        let dates = privacies[i].split(separator: " ")[0]
        let kind = String(privacies[i].split(separator: " ")[1])
        var year = Int(dates.split(separator: ".")[0])!
        var month = Int(dates.split(separator: ".")[1])!
        var day = Int(dates.split(separator: ".")[2])!
        
        if let period = kindOfTerms[kind] {
            month += period
            day -= 1
            if day == 0 {
                month -= 1
                day = 28
            }
            if month > 12 {
                year += (month/12)
                month %= 12
            }
        }
        if (year-1)*12*28+(month-1)*28+day < (todayYear-1)*12*28+(todayMonth-1)*28+todayDay {
            answer.append(i+1)
        }
    }
    return answer
}