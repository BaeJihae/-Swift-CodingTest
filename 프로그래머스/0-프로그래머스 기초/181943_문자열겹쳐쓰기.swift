//
//  [ 프로그래머스 ] 181943 - 문자열 겹쳐쓰기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181943
//

import Foundation

func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
//    var n: Int = my_string.count - s - overwrite_string.count
//    if n > 0 {
//        return String(my_string.prefix(s) + overwrite_string + String(my_string.suffix(n)))
//    }else {
//        return String(my_string.prefix(s) + overwrite_string)
//    }
    
    let first = my_string.prefix(s)
    let end = my_string.suffix(my_string.count - s - overwrite_string.count)
    return first + overwrite_string + end
    
}

print(solution("He11oWor1d", "lloWorl", 2))
