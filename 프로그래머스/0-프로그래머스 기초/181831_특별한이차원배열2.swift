//
//  [ 프로그래머스 ] 181831 - 특별한 이차원 배열2
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181831
//
import Foundation

func solution(_ arr:[[Int]]) -> Int {
     var answer = 1
    
    (0...arr.count-1).forEach{ i in
        (0...i).forEach{ j in
            if i != j && arr[i][j] != arr[j][i] {
                answer = 0
            }
        }
    }
    return answer
}
