//
//  [ 프로그래머스 ] 181936 - 공배수
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181936
//
import Foundation

func solution(_ number:Int, _ n:Int, _ m:Int) -> Int {
    return number%n == 0 && number%m == 0 ? 1 : 0
}
