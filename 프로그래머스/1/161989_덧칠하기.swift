//
// [프로그래머스] 161989 - 덧칠하기
//
// https://school.programmers.co.kr/learn/courses/30/lessons/161989
//

import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {

    // 현재 롤러의 위치
    var location: Int = 0
    var count: Int = 0
    
    for i in section {
        
        // 롤러의 위치가 벽을 넘어서면 반복문 종료
        if location > n {
            break
        }
        
        // 벽이 칠해지지 않았다면 실행
        if i >= location {
            location = i + m
            count += 1
        }
    }
    
    return count
}
