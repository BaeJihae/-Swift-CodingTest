//
//  [ 프로그래머스 ] 120885 - 이진수 더하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120885
//

import Foundation

//func solution(_ bin1:String, _ bin2:String) -> String {
//    var bin1 = String(bin1.reversed())
//    var bin2 = String(bin2.reversed())
//    var answer = ""
//    var tmp = 0
//    
//    while !bin1.isEmpty || !bin2.isEmpty {
//        
//        if !bin1.isEmpty {
//            tmp += Int(String(bin1.prefix(1)))!
//            bin1 = String(bin1.dropFirst())
//        }
//        
//        if !bin2.isEmpty {
//            tmp += Int(String(bin2.prefix(1)))!
//            bin2 = String(bin2.dropFirst())
//        }
//        
//        if tmp >= 2 {
//            answer = String(tmp%2) + answer
//            tmp = tmp/2
//        }else {
//            answer = String(tmp) + answer
//            tmp = 0
//        }
//    }
//    if tmp != 0 {
//        answer = String(tmp) + answer
//    }
//    return answer
//                        
//}

func solution(_ bin1:String, _ bin2:String) -> String {
    let int1 = Int(bin1, radix: 2)!
    let int2 = Int(bin2, radix: 2)!
    return String(int1 + int2, radix: 2)
}

print(solution("1001", "1111"))
