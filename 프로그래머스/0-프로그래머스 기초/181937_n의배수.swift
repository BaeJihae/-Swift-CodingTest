//
//  [ 프로그래머스 ] 181937 - n의 배수
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181937
//
import Foundation

func solution(_ num:Int, _ n:Int) -> Int {
    return num % n == 0 ? 1 : 0
}
