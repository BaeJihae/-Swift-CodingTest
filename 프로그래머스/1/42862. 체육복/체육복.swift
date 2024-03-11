import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    var reserve = reserve.sorted()
    var lost = lost.sorted()
    
    // 체육복이 없는 학생들 카운트
    var count = lost.count
    
    // lost와 reserve의 중복값 찾기
    for (i, num) in lost.enumerated() {
        if reserve.contains(num) {
            count -= 1
            lost[i] = -1
            reserve[reserve.firstIndex(of: num)!] = -1
            continue
        }
    }
    
    for num in lost {
        if num == -1 {
            continue
        }
        if reserve.contains(num-1) {
            count -= 1
            reserve[reserve.firstIndex(of: num-1)!] = -1
            continue
        }
        if reserve.contains(num+1) {
            count -= 1
            reserve[reserve.firstIndex(of: num+1)!] = -1
            continue
        }
    }
    
    return n - count
}