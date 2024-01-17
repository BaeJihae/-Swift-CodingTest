//
//  [ 프로그래머스 ] 181835 - 조건에 맞게 수열 변환하기 3
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181835
//
import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    return k % 2 == 1 ? arr.map{ $0 * k } : arr.map{ $0 + k }
}
