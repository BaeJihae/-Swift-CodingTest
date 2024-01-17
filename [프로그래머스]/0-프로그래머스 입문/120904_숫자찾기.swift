//
//  [ 프로그래머스 ] 120904 - 숫자 찾기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120904
//
import Foundation

func solution(_ num:Int, _ k:Int) -> Int { Int( String(num).map{ Int(String($0))! }.firstIndex(of: k) ?? -2) + 1 }
