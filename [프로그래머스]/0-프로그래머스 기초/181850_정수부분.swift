//
//  [ 프로그래머스 ] 181850 - 정수 부분
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181850
//

import Foundation

func solution(_ a:String, _ b:String) -> String {
    
    // Int 범위안에 들어올 수 있다면 출력
    if let a = Int(a), let b = Int(b) {
        return String(a+b)
    }
    
    var aString = a, bString = b
    // 정답
    var answer = ""
    // 올림수
    var up = 0
    
    while aString != "" || bString != "" {
        var sum = up
        if aString != "" {
            guard let aLast = aString.last, let aInt = Int(String(aLast)) else { break }
            sum += aInt
            aString.removeLast()
        }
        if bString != "" {
            guard let bLast = bString.last, let bInt = Int(String(bLast)) else { break }
            sum += bInt
            bString.removeLast()
        }
        answer = String(sum % 10) + answer
        up = sum / 10
    }
    if up != 0 {
        answer = String(up) + answer
    }
    return answer
}
