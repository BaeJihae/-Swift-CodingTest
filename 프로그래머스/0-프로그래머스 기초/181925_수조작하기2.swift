//
//  [ 프로그래머스 ] 181925 - 수 조작하기2
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181925
//

import Foundation

func solution(_ numLog:[Int]) -> String {
    let iniSet: [Int:Character] = [1:"w", -1:"s", 10:"d", -10:"a"]
    return (0...numLog.count-2).map{ String(iniSet[numLog[$0+1] - numLog[$0]]!)}.joined()
}
