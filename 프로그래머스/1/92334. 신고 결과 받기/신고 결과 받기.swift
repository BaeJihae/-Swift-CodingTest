import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    
    // 레포트를 array로 저장
    var reportDic = [String:[String]]()
    // 신고받은 횟수 저장
    var reportedUserDict = [String:Int]()

    for str in Set(report) {
        var reportArr = str.split(separator: " ").map{ String($0) }
        
        // 신고받은 유저만 reportedUserDict에 저장
        reportedUserDict[reportArr[1]] = (reportedUserDict[reportArr[1]] ?? 0) + 1
        
        // 레포트의 내용을 reportDic에 저장
        reportDic[reportArr[0]] = (reportDic[reportArr[0]] ?? []) + [reportArr[1]]
        
    }
    
    reportedUserDict.forEach{ 
        if $0.value < k {
            reportedUserDict[$0.key] = nil
        } 
    }
    
    return id_list.map { id in
        (reportDic[id] ?? []).filter{
            reportedUserDict.keys.contains($0)
        }.count
    }
}