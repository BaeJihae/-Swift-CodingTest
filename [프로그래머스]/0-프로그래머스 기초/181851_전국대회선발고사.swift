//
//  [ 프로그래머스 ] 181851 - 전국 대회 선발 고사
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181851
//

import Foundation

//func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
//    var rankNum = 1
//    var rankArray:[Int] = []
//    while rankArray.count < 3 {
//        rank.enumerated().forEach{ a in
//            if a.element == rankNum && attendance[a.offset] == true {
//                rankArray.append(a.offset)
//            }
//        }
//        rankNum += 1
//    }
//    return rankArray[0] * 10000 + rankArray[1] * 100 + rankArray[2] * 1
//}
//
//var a = [0,1,2,3,4,5,6,32,3,12,4]
//print(a.enumerated().filter{ $0.element > 10 }.sorted { $0.element < $1.element }.map{ $0.offset })

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    let finalRank = rank.enumerated()
        .filter{ attendance[$0.offset] }
        .sorted { $0.element < $1.element }
        .map{ $0.offset }
    return finalRank[0] * 10000 + finalRank[1] * 100 + finalRank[2] * 1
}
