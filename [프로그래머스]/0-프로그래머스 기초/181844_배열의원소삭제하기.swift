//
//  [ 프로그래머스 ] 181844 - 배열의 원소 삭제하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181844
//
import Foundation

func solution(_ arr:[Int], _ delete_list:[Int]) -> [Int] {
    return arr.filter{ !delete_list.contains($0) }.map{ $0 }
}
