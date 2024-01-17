//
//  [ 프로그래머스 ] 120864 - 숨어있는 숫자의 덧셈 (2)
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120864
//
import Foundation

// 내 풀이
func solution(_ my_string:String) -> Int {
    return my_string.components(separatedBy: ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]).reduce(0) { $0 + ( Int($1) ?? 0 )}
}

// 다른 사람 풀이
//func solution(_ my_string:String) -> Int {
//    return my_string.replacingOccurrences(of: "[a-zA-Z]", with: " ").split(separator: " ").reduce(0) { $0 + (Int($1) ?? 0 )}
//}

// 다른 사람 풀이2
//func solution(_ my_string:String) -> Int {
//    
//    var answer = 0
//    var tmp = ""
//    
//    for str in my_string {
//        if str.isNumber {
//            tmp = tmp + String(str)
//        }else {
//            answer += ( Int(tmp) ?? 0 )
//            tmp = ""
//        }
//    }
//    answer += ( Int(tmp) ?? 0 )
//    
//    return answer
//}
