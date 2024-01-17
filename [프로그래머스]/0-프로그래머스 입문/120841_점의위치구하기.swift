//
//  [ 프로그래머스 ] 120841 - 점의 위치 구하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120841
//

import Foundation

func solution(_ dot:[Int]) -> Int {
    return dot[0] > 0 ? (dot[1] > 0 ? 1 : 4 ) : (dot[1] > 0 ? 2 : 3)
}
