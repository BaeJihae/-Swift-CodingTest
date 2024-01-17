//
//  [ 프로그래머스 ] 120921 - 문자열 밀기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120921
//

import Foundation

func solution(_ A:String, _ B:String) -> Int {

    if A == B {
        return 0
    } else {
        for j in 0...A.count-2{
            var arrayA = Array(A)
            var changeA: [Character] = []
            for k in arrayA.count-(j+1)...arrayA.count-1{
                changeA.append(arrayA[k])
            }
            for i in 0...A.count-(j+2) {
                changeA.append(arrayA[i])
            }
            if B == String(changeA) {
                return j+1
            } else {
                continue
            }
        }
        return -1
    }
}
