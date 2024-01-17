//
//  [ 프로그래머스 ] 181854 - 배열의 길이에 따라 다른 연산하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181854
//
import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    return arr.count % 2 == 1 ? arr.enumerated().map{ $0.offset % 2 == 0 ? $0.element+n : $0.element } : arr.enumerated().map{ $0.offset % 2 == 1 ? $0.element+n : $0.element }
}
