//
//  [ 프로그래머스 ] 181917 - 간단한 논리 연산
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181917
//
import Foundation

func solution(_ x1:Bool, _ x2:Bool, _ x3:Bool, _ x4:Bool) -> Bool {
    return ( x1 || x2 ) && ( x3 || x4 )
}
