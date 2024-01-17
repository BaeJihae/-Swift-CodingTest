//
//  [ 프로그래머스 ] 181902 - 문자 개수 세기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181902
//

import Foundation

func solution(_ my_string:String) -> [Int] {
    var countA = [Int].init(repeating: 0, count: 52)
    for i in 65...91{
        countA[i%65] = (my_string.filter{ String($0) == String(UnicodeScalar(i)!) }.count)
    }
    for i in 97...122{
        countA[i%97+26] = (my_string.filter{ String($0) == String(UnicodeScalar(i)!) }.count)
    }
    return countA
}
