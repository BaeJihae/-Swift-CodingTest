//
//  [ 프로그래머스 ] 120956 - 옹알이(1)
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120956
//

import Foundation

let strBabbling = ["aya","ye","woo","ma"]

func compareString(_ babbling:String) -> Int {
    if babbling.count == 0 {
        return 1
    }else{
        for j in 0...3{
            if babbling.hasPrefix(strBabbling[j]) == true {
                return compareString(String(babbling.dropFirst(strBabbling[j].count)))
            }
        }
        return 0
    }
}

func solution(_ babbling:[String]) -> Int {
    var count = 0
    for i in 0...babbling.count-1 {
        if compareString(babbling[i]) == 1{
            count += 1
        }
    }
    return count
}
