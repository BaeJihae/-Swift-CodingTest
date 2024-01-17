//
//  [ 프로그래머스 ] 181907 - 문자열의 앞의 n글자
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181907
//

import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    return String(my_string.prefix(n))
}
