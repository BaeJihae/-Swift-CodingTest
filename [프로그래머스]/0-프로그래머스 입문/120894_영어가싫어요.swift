//
//  [ 프로그래머스 ] 120894 - 영어가 싫어요
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120894
//

import Foundation

// 해결 1
//func solution(_ numbers:String) -> Int64 {
//    var numbers = numbers
//    var answer = ""
//    let num: [String:String] = ["zero":"0", "one":"1", "two":"2", "three":"3",  "four":"4", "five":"5", "six":"6", "seven":"7", "eight":"8", "nine": "9"]
//    
//    while numbers != ""{
//        for i in num {
//            if numbers.hasPrefix(i.key) {
//                answer += i.value
//                print(answer)
//                numbers = String(numbers.dropFirst(i.key.count))
//            }
//        }
//    }
//    
//    return Int64(answer) ?? 0
//}

func solution(_ numbers:String) -> Int64 {
    var numbers = numbers
    let num: [String:String] = ["zero":"0", "one":"1", "two":"2", "three":"3",  "four":"4", "five":"5", "six":"6", "seven":"7", "eight":"8", "nine": "9"]
    
    for i in num {
        //numbers.replaceSubrange(i.key, with: i.value)
        numbers = numbers.replacingOccurrences(of: i.key, with: i.value)
    }

    return Int64(numbers) ?? 0
}

print(solution("onetwothreefourfivesixseveneightnine"))
