//
//  [ 프로그래머스 ] 120829 - 각도기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120829
//
import Foundation

func solution(_ angle:Int) -> Int {
    switch angle {
        case 0..<90:
            return 1
        case 90:
            return 2
        case 90..<180:
            return 3
        case 180:
            return 4
        default:
            return 0
    }
}
