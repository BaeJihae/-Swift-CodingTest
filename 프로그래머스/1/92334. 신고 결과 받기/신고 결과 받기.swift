import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    
    // 레포트를 Dict로 저장
    var reportDict = [String: [String]]()
    // 신고받은 횟수 저장
    var reportedUserDict = [String: Int]()
    
    for str in Set(report){
        let array = str.split(separator: " ").map{ String($0) }
        
        reportDict[array[0]] = (reportDict[array[0]] ?? []) + [array[1]]
        reportedUserDict[array[1]] = (reportedUserDict[array[1]] ?? 0) + 1
        
    }
    
    return id_list.map{ id in
        return (reportDict[id] ?? []).reduce(0) {
            $0 + ((reportedUserDict[$1] ?? 0 ) >= k ? 1 : 0)
        }
    }
}