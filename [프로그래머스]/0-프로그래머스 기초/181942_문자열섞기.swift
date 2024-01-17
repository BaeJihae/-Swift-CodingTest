//
//  [ 프로그래머스 ] 181942 - 문자열 섞기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181942
//
import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    var arrayStr1 = Array(str1)
    var arrayStr2 = Array(str2)
    var newStr: [String] = []
    for i in 0...str1.count-1 {
        newStr.append(String(arrayStr1[i]))
        newStr.append(String(arrayStr2[i]))
    }
    return String(newStr.joined())
}
