//
//  [ 프로그래머스 ] 120889 - 삼각형의 완성조건(1)
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120889
//

import Foundation

func solution(_ sides:[Int]) -> Int {
    let sides = sides.sorted()
    return sides[2] < sides[0] + sides[1] ? 1 : 2
}
