//
//  [ 프로그래머스 ] 181914 - 9로 나눈 나머지
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181914
//
import Foundation

func solution(_ number:String) -> Int {
    //return Array(number).filter{ $0 != "0" }.map{ Int(String($0))! }.reduce(0, +) % 9
    return number.map{ Int(String($0))! }.reduce(0, +) % 9
}

print(solution("78720646226947352489"))
