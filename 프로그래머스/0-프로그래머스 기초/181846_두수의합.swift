//
//  [ 프로그래머스 ] 181846 - 두 수의 합
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181846
//
import Foundation

func solution(_ a:String, _ b:String) -> String {
    
    if let a = Int(a), let b = Int(b) {
        return String(a+b)
    }
    
    var aString = a, bString = b
    var answer = ""
    var tmp = 0
    
    while true {
        var sum = tmp
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
        tmp = sum / 10
        if aString == "" && bString == "" {
            break
        }
    }
    return answer
}

print(solution("3903298490283409820934802934", "3342342354565645645646"))
