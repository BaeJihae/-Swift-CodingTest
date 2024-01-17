//
//  [ 프로그래머스 ] 181906 - 접두사인지 확인하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181906
//

import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    return String(my_string.prefix(n))
}
